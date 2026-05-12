cask "dataflare" do
  arch arm: "aarch64", intel: "x86_64"

  version "3.0.1"
  sha256 arm:   "00c04c9138e2334ff5763d5e0a9d0b7427ffb462b76f0a523a2bc921c3bc8a09",
         intel: "8abf22597b8e2ce994819d09d2f5aa3f27e2b80f068d4f3beb2ea8fd784e51cf"

  url "https://assets.dataflare.app/release/darwin/#{arch}/Dataflare-#{version}.dmg"
  name "Dataflare"
  desc "Database manager"
  homepage "https://dataflare.app/"

  livecheck do
    url "https://assets.dataflare.app/release/darwin/#{arch}/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on :macos

  app "Dataflare.app"

  zap trash: [
    "~/Library/Application Support/app.dataflare.desktop",
    "~/Library/Caches/app.dataflare.desktop",
    "~/Library/Caches/Dataflare",
    "~/Library/HTTPStorages/Dataflare.binarycookies",
    "~/Library/Preferences/app.dataflare.desktop.plist",
    "~/Library/Preferences/Dataflare.plist",
    "~/Library/WebKit/app.dataflare.desktop",
    "~/Library/WebKit/Dataflare",
  ]
end
