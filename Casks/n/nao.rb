cask "nao" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.1.31"
    sha256 "6dd51803540ee714913771a0870b3fb66e57c819311e7ea709011c840dd982e0"
  end
  on_intel do
    version "0.1.29"
    sha256 "1fd9cb1f02f9a384742e16f1d18e575609b78ff5fa4c852e9a911e6087e7357c"
  end

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
