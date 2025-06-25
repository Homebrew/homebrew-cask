cask "nao" do
  arch arm: "arm64", intel: "x64"

  version "0.3.2"
  sha256 arm:   "1dbcfff781e6fb0488ccfc3b30a3a8fe2e56fdbc8fe56328008858731f2a53a5",
         intel: "30208f227ff0d446dc250132bd118c9595bb10aacf9847454556dca0a53441ac"

  url "https://storage.googleapis.com/nao-releases/nao/darwin-#{arch}/#{version}/nao.#{arch}.#{version}.dmg",
      verified: "storage.googleapis.com/nao-releases/nao/"
  name "nao"
  desc "AI code editor for data"
  homepage "https://getnao.io/"

  livecheck do
    url "https://storage.googleapis.com/nao-releases/nao/darwin-#{arch}/releases.json"
    strategy :json do |json|
      json["currentRelease"]
    end
  end

  depends_on macos: ">= :catalina"

  app "nao.app"
  binary "#{appdir}/nao.app/Contents/Resources/app/bin/nao"

  zap trash: [
    "~/Library/Application Support/nao",
    "~/Library/Caches/com.nao",
    "~/Library/Caches/com.nao.ShipIt",
    "~/Library/HTTPStorages/com.nao",
    "~/Library/Preferences/com.nao.plist",
    "~/Library/Saved Application State/com.nao.savedState",
  ]
end
