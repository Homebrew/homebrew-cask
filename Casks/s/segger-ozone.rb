cask "segger-ozone" do
  arch arm: "arm64", intel: "x86_64"

  version "3.52a"
  sha256 arm:   "2ae67884811811dad5f6a66c6a5cc9a408ec312a64ee19d577230cdd17904ab4",
         intel: "153e3c2b267dbe1bb853686641847c4e815c9e0906c7893e45f625aa333d7487"

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
