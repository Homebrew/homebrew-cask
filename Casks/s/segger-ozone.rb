cask "segger-ozone" do
  arch arm: "arm64", intel: "x86_64"

  version "3.34a"
  sha256 arm:   "a43eef46154c5ed86ce9108cb007d543e58c30796b73a2bf588dfd2a5fb69e38",
         intel: "cdf9d8b39547d9b2af64556fc2f39039942b6659e8567165469e61b13cfb77cd"

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
