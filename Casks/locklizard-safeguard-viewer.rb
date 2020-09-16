cask "locklizard-safeguard-viewer" do
  version "2.5.81"
  sha256 "d77a65e7f19aae939c5bbe2eb0db4ac7e678d6aa9dde6a9fdfd55964673bd08c"

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
