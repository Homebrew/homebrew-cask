cask "segger-jlink" do
  version "7.86h"
  sha256 "4022a4351f44f6b07470f818be0a41bf82f8ceea5a35571870e0bfbb1c788207"

  url "https://www.segger.com/downloads/jlink/JLink_MacOSX_V#{version.no_dots}_universal.pkg",
      using: :post,
      data:  {
        "accept_license_agreement" => "accepted",
        "non_emb_ctr"              => "confirmed",
        "submit"                   => "Download software",
      }
  name "Segger J-Link Command Line Tools"
  desc "Software and Documentation pack for Segger J-Link debug probes"
  homepage "https://www.segger.com/downloads/jlink"

  livecheck do
    url "https://www.segger.com/downloads/jlink/ReleaseNotes_JLink.html"
    regex(/Version\s*V(\d+(?:\.\d+[a-z]?)*)/i)
  end

  pkg "JLink_MacOSX_V#{version.no_dots}_universal.pkg"

  uninstall quit:    [
              "com.segger.JFlashLite.*",
              "com.segger.JLinkGDBServer.*",
              "com.segger.JLinkLicenseManager.*",
              "com.segger.JLinkRegistration.*",
              "com.segger.JLinkRemoteServer.*",
              "com.segger.JLinkRTTViewer.*",
            ],
            pkgutil: "com.segger.pkg.JLink"

  zap trash: [
    "~/.SEGGER",
    "~/Library/Application Support/SEGGER",
    "~/Library/Saved Application State/com.segger.JFlashLite.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkGDBServer.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkLicenseManager.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRTTViewer.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRegistration.*savedState",
    "~/Library/Saved Application State/com.segger.JLinkRemoteServer.*savedState",
  ]

  caveats do
    license @cask.url.to_s
  end
end
