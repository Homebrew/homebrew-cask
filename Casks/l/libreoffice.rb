cask "libreoffice" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "26.8.1"
  sha256 arm:   "ca074e0b13571efb30a31fc531c5f95e997030637325e5d5de92d67aefdf0dfc",
         intel: "4c7464313a529e9074400cbcdc894fc40ac4ef9421ded03b16b5a78d12cb155e"

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg"
  name "LibreOffice"
  desc "Free cross-platform office suite, fresh version"
  homepage "https://www.libreoffice.org/"

  # We check the download page for release versions because:
  # * Upstream may upload a new version to the stable download directory
  #   (https://download.documentfoundation.org/libreoffice/stable/) before it's
  #   released.
  # * The libreoffice.org Release Notes page may not be updated in a timely
  #   manner after new releases are announced (whereas the wiki appears to be
  #   updated relatively soon after).
  # * The Wiki server blocks requests based on IP address, which prevents us
  #   from checking it in the autobump/CI environment, etc.
  #
  # NOTE: This needs to check a page that provides the latest versions for both
  # Fresh and Still, as this check is also used by the `libreoffice-still` cask.
  livecheck do
    url "https://www.libreoffice.org/download/"
    regex(%r{href=["']?[^"' >]*/stable/[^"' >]*LibreOffice[._-]v?(\d+(?:\.\d+)+)(?:[._-]MacOS)?[._-]#{arch}\.dmg}i)
  end

  conflicts_with cask: "libreoffice-still"
  depends_on :macos

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
