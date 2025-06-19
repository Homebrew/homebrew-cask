cask "nao" do
  arch arm: "arm64", intel: "x64"

  on_arm do
    version "0.2.5"
    sha256 "e0548212ab4c86f57eabcd2b66053f3d5c214f8db684d25d10415c5f4b3924dd"
  end
  on_intel do
    version "0.2.4"
    sha256 "4b9cf203917658b242fadeb27f0186f11811dfd8cbb561bbb5dd17adec12944a"
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
