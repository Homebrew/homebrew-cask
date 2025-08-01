cask "libreoffice-still" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.5.2"
  sha256 arm:   "0f1e170818508c238ea3fc48753ba264c3dbbce0270655fe020f415f0deef0f0",
         intel: "1cb2cc12f26757cb3df282854c80edd17857ece679a6b30b6391b0dc95f6f504"

  url "https://download.documentfoundation.org/libreoffice/stable/#{version.major_minor_patch}/mac/#{folder}/LibreOffice_#{version.major_minor_patch}_MacOS_#{arch}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice Still"
  desc "Free cross-platform office suite, stable version recommended for enterprises"
  homepage "https://www.libreoffice.org/"

  # LibreOffice Still is usually the previous stable release. However, there are cases
  # where the Still version reaches EOL. We can make use of https://endoflife.date
  # to get the last supported version.
  livecheck do
    url "https://endoflife.date/api/v1/products/libreoffice/"
    strategy :json do |json|
      json.dig("result", "releases")
          .reject { |release| release["isEol"] }
          .map { |release| release.dig("latest", "name") }
          .last
    end
  end

  conflicts_with cask: "libreoffice"
  depends_on macos: ">= :catalina"

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
