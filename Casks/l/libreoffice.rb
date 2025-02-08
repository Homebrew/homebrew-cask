cask "libreoffice" do
  arch arm: "aarch64", intel: "x86-64"
  folder = on_arch_conditional arm: "aarch64", intel: "x86_64"

  version "25.2.0"
  sha256 arm:   "f0bdac9830d736afa716ba92049380851bf576b969ebd7f01d3397291dbe7359",
         intel: "7c616e860ea62ef659c88eda716ba0a138d87825735c328c204be38944063627"

  url "https://download.documentfoundation.org/libreoffice/stable/#{version}/mac/#{folder}/LibreOffice_#{version}_MacOS_#{arch}.dmg",
      verified: "download.documentfoundation.org/libreoffice/stable/"
  name "LibreOffice"
  desc "Free cross-platform office suite, fresh version"
  homepage "https://www.libreoffice.org/"

  # We check the wiki homepage for release versions because:
  # * Upstream may upload a new version to the stable download directory
  #   (https://download.documentfoundation.org/libreoffice/stable/) before it's
  #   released.
  # * The contents of the download page can change based on user agent(?),
  #   sometimes in unpredictable ways that break the check, so it's not an
  #   entirely dependable source for us to check.
  # * The libreoffice.org Release Notes page may not be updated in a timely
  #   manner after new releases are announced (whereas the wiki appears to be
  #   updated relatively soon after).
  #
  # NOTE: This needs to check a page that provides the latest versons for both
  # Fresh and Still, as this check is also used by the `libreoffice-still` cask.
  livecheck do
    url "https://wiki.documentfoundation.org/Main_Page"
    regex(/>\s*Download\s+LibreOffice\s+v?(\d+(?:\.\d+)+)\s*</im)
  end

  conflicts_with cask: "libreoffice-still"
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
