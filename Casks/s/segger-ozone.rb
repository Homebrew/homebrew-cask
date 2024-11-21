cask "segger-ozone" do
  arch arm: "arm64", intel: "x86_64"

  version "3.38b"
  sha256 arm:   "f88ff4eee11f0507b29a3298da530d674677ddba9dde1a3c381a357d2caa73b1",
         intel: "f026abf10000498a4b997425b16dd36f39dbe13f8e5e3ed22f0243c11c9d2f85"

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
