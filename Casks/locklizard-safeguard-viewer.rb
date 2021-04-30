cask "locklizard-safeguard-viewer" do
  version "2.5.81"
  sha256 :no_check

  url "https://downloads.locklizard.com/PDCViewerSetupOSX.zip"
  appcast "https://www.locklizard.com/download_pdf_viewers/#mac-viewer"
  name "LockLizard Safeguard Viewer"
  name "PDC Viewer"
  homepage "https://www.locklizard.com/"

  auto_updates true
  depends_on arch: ":x86_64"

  pkg "PDCViewerSetup#{version.no_dots}_x64_Mac.pkg"

  uninstall pkgutil: "com.locklizard.pkg.LockLizardSafeguardViewer"
end
