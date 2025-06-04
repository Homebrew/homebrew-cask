cask "exactscan" do
  version "25.1"
  sha256 "1edac4216a879790e496ed862137ad4c19daf7a30e48cce826a77eab82dd676b"

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
