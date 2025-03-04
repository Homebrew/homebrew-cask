cask "segger-ozone" do
  arch arm: "arm64", intel: "x86_64"

  version "3.38d"
  sha256 arm:   "c96698f4852a8697fb712ccc7fff30cb9b31a142128f1cc3a1f27a148abec754",
         intel: "030b229a863f52ec6df3a033b1bdc12020b2178e834c736123853030faca43e6"

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
