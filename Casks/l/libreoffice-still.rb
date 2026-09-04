cask "libreoffice-still" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.2.6"
  sha256 arm:   "f8d37fca7b7cda5898f77845d599d7820832dcb6614786d8c558367a5633bf96",
         intel: "135b8a95b8133396d54bf8e726dbc0066145efa0d785963fc3d4592acbfcfe5b"

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  name "LibreOffice Still"
  desc "Free cross-platform office suite, stable version recommended for enterprises"
  homepage "https://www.libreoffice.org/"

  # This checks the same source of version information as the `libreoffice`
  # cask, so we need to make sure that the former always checks a page that
  # provides the latest versions for both Fresh and Still.
  livecheck do
    url "https://www.libreoffice.org/download/"
    regex(%r{href=["']?[^"' >]*/stable/[^"' >]*LibreOffice[._-]v?(\d+(?:\.\d+)+)(?:[._-]MacOS)?[._-]#{arch}\.dmg}i)
    strategy :page_match do |page, regex|
      # Sort versions from lowest to highest, using the lowest (or only) version
      page.scan(regex).map(&:first).uniq.min_by { |v| Version.new(v) }
    end
  end

  conflicts_with cask: "libreoffice"
  depends_on macos: :big_sur

  app "LibreOffice.app"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/gengal"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regview"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/senddoc"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uno"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unoinfo"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/unopkg"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/uri-encode"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/xpdfimport"
  command_wrapper "soffice",
                  executable: "#{appdir}/LibreOffice.app/Contents/MacOS/soffice"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.libreoffice.script.sfl*",
    "~/Library/Application Support/LibreOffice",
    "~/Library/Preferences/org.libreoffice.script.plist",
    "~/Library/Saved Application State/org.libreoffice.script.savedState",
  ]
end
