cask "exactscan" do
  version "26.3"
  sha256 "5fef30f863b65d1f91dc6de04abe42084def3c963cf4186049e331db8863065c"

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
