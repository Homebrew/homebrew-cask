cask "exactscan" do
  version "24.6"
  sha256 "c76827b04ff5e6ea023f0438a31322876ca947c481c6d90e705add739296d303"

  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg",
      verified: "dl.exactcode.com/"
  name "ExactScan"
  desc "Document scanner"
  homepage "https://exactscan.com/index.html"

  livecheck do
    url "https://exactscan.com/download.html"
    regex(%r{href=.*?/ExactScan-(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "ExactScan.app"

  zap trash: [
    "~/Library/Caches/de.exactcode.ExactScan",
    "~/Library/HTTPStorages/de.exactcode.ExactScan",
    "~/Library/Preferences/de.exactcode.ExactScan.plist",
  ]

  caveats do
    requires_rosetta
  end
end
