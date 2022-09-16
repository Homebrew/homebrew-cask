cask "libreoffice" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "7.4.1"
  sha256 arm:   "c78862b0388dba6cff2a46be4043b6ae8206045eb066a9efd86dd601d9ace192",
         intel: "53c968d453b2d17c08d06050e0c98fdad318074e41504c051f925bc0796b1ce2"

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice"
  desc "Office suite"
  homepage "https://www.libreoffice.org/"

  livecheck do
    url "https://download.documentfoundation.org/libreoffice/stable/"
    regex(%r{href="(\d+(?:\.\d+)+)/"}i)
  end

  conflicts_with cask: "homebrew/cask-versions/libreoffice-still"
  depends_on macos: ">= :sierra"

  app "LibreOffice.app"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/gengal"
  binary "#{appdir}/LibreOffice.app/Contents/MacOS/regmerge"
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
