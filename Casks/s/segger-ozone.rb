cask "segger-ozone" do
  arch arm: "arm64", intel: "x86_64"

  version "3.40i"
  sha256 arm:   "02882afdee16885ea1a6839cfa5853ffb6c6f0ed057205117f201242a2698250",
         intel: "bb8fd7d8e2be9dd968f6f34166e9be88ecdc3d0148bdb7020dee33e407f667de"

  url "https://www.segger.com/downloads/jlink/Ozone_MacOSX_V#{version.no_dots}_#{arch}.pkg",
      using: :post,
      data:  {
        "accept_license_agreement" => "accepted",
        "non_emb_ctr"              => "confirmed",
        "submit"                   => "Download software",
      }
  name "Segger Ozone J-Link Debugger"
  desc "Software and Documentation pack for Segger Ozone J-Link debugger"
  homepage "https://www.segger.com/downloads/jlink#Ozone"

  livecheck do
    url "https://www.segger.com/downloads/jlink/ReleaseNotes_Ozone.html"
    regex(/<h2[^>]*>\s*Version\s*(\d+(?:\.\d+)+[a-z]?)/i)
  end

  depends_on :macos

  pkg "Ozone_MacOSX_V#{version.no_dots}_#{arch}.pkg"

  uninstall quit:    "com.segger.Ozone.*",
            pkgutil: "com.segger.pkg.Ozone"

  zap trash: [
    "~/.SEGGER",
    "~/Library/Application Support/SEGGER/Ozone",
    "~/Library/Saved Application State/com.segger.Ozone.*savedState",
  ]

  caveats do
    license @cask.url.to_s
  end
end
