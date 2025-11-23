cask "libreoffice-still" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.7"
  sha256 arm:   "5ef9d90cd03b950f42f836d158ee67162ba51a686a759856207034d2c634b456",
         intel: "add4a02e69273fc4dd634145ca418a2cbc6618cf091aa1b6a26652ea51b0687a"

  on_arm do
    depends_on macos: ">= :big_sur"
  end
  on_intel do
    depends_on macos: ">= :catalina"
  end

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Still"
  desc "Free cross-platform office suite, stable version recommended for enterprises"
  homepage "https://www.libreoffice.org/"

  # This checks the same source of version information as the `libreoffice`
  # cask, so we need to make sure that the former always checks a page that
  # provides the latest versions for both Fresh and Still.
  #
  # This check uses data from endoflife.date to filter out EOL versions, as the
  # second version on the main Wiki page may be end of life. When this occurs,
  # Fresh and Still are the same version until there's a new Fresh release with
  # a higher major/minor. For example, the main Wiki page lists 25.2.5 and
  # 24.8.7 but 24.8 is EOL, so 25.2.5 is the newest Still release. When neither
  # version is EOL, the higher version is Fresh and the lower version is Still.
  livecheck do
    url "https://wiki.documentfoundation.org/Main_Page"
    regex(/>\s*Download\s+LibreOffice\s+v?(\d+(?:\.\d+)+)\s*</im)
    strategy :page_match do |page, regex|
      # Identify the version(s) on the main Wiki page
      versions = page.scan(regex).map(&:first)
      uniq_major_minor = versions.map { |version| Version.new(version).major_minor.to_s }.uniq.sort.reverse
      next if uniq_major_minor.length < 2

      # Fetch the EOL data from endoflife.date
      eol_page = Homebrew::Livecheck::Strategy.page_content("https://endoflife.date/api/v1/products/libreoffice/")
      next if (eol_content = eol_page[:content]).blank?

      # Collect EOL major/minor versions
      eol_json = Homebrew::Livecheck::Strategy::Json.parse_json(eol_content)
      eol_major_minor = eol_json.dig("result", "releases")&.filter_map do |release|
        next unless release["isEol"]

        release["name"]
      end&.uniq
      next if eol_major_minor.blank?

      # Identify the major/minor to use as Still
      still_major_minor = if eol_major_minor.include?(uniq_major_minor[1])
        uniq_major_minor[0]
      else
        uniq_major_minor[1]
      end

      versions.select { |version| Version.new(version).major_minor == still_major_minor }
    end
  end

  conflicts_with cask: "libreoffice"

  app "LibreOffice.app"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/gengal"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regview"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/senddoc"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uno"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unoinfo"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unopkg"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uri-encode"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/xpdfimport"
  # shim script (https://github.com/Homebrew/homebrew-cask/issues/18809)
  shimscript = "#{staged_path}/soffice.wrapper.sh"
  binary shimscript, target: "soffice"

  preflight do
    File.write shimscript, <<~EOS
      #!/bin/sh
      '#{appdir}/LibreOffice.app/Contents/MacOS/soffice' "$@"
    EOS
  end

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl*",
    "~/Library/Application Support/LibreOffice",
    "~/Library/Preferences/org.libreoffice.script.plist",
    "~/Library/Saved Application State/org.libreoffice.script.savedState",
  ]
end
