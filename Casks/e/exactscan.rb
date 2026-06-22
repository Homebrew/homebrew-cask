cask "exactscan" do
  version "26.6"
  sha256 "9ab96214b13fb976558768799cc224326ce4f67aa441babd6b2bc3e7e8299818"

  url "https://dl.exactcode.com/exactscan/ExactScan-#{version}.dmg",
      verified: "dl.exactcode.com/"
  name "ExactScan"
  desc "Document scanner"
  homepage "https://exactscan.com/index.html"

  livecheck do
    url "https://exactscan.com/download.html"
    regex(%r{href=.*?/ExactScan-(\d+(?:\.\d+)+)\.dmg}i)
  end

  depends_on :macos

  app "ExactScan.app"

  zap trash: [
    "~/Library/Caches/de.exactcode.ExactScan",
    "~/Library/HTTPStorages/de.exactcode.ExactScan",
    "~/Library/Preferences/de.exactcode.ExactScan.plist",
  ]
end
