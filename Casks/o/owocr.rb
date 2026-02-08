cask "owocr" do
  arch arm: "applesilicon", intel: "intel"

  version "1.24.2"
  sha256 arm:   "f9ee51ec05d76cbeb1c17ae45ab1a84b1b46f5355b537078bc02bd5dcbc429b0",
         intel: "1a2dd996214512101bec38507fe23192f70e12170931c8a54c10eb2132df0c52"

  url "https://github.com/AuroraWright/owocr/releases/download/#{version}/owocr-mac_#{arch}.dmg"
  name "OwOCR"
  desc "Optical character recognition for Japanese text"
  homepage "https://github.com/AuroraWright/owocr/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OwOCR.app"

  zap trash: [
    "~/Library/Application Support/com.aury.owocr",
    "~/Library/Caches/com.aury.owocr",
  ]
end
