cask "basecamp" do
  arch arm: "arm64", intel: "x64"
  livecheck_arch = on_arch_conditional arm: "_arm64"

  version "5.0.8"
  sha256 arm:   "daa9ae879dfe01bb5fdc272f6aeed4ba2e124604fefbb13de08b719eb0ec1546",
         intel: "d9611e6af466d015b6485b8d63c278f61bf880b288c9b6660aa8ce1b69874778"

  url "https://basecamp.com/desktop/Basecamp-#{version}-mac-#{arch}.zip"
  name "Basecamp"
  desc "All-In-One Toolkit for Working Remotely"
  homepage "https://basecamp.com/"

  livecheck do
    url "https://basecamp.com/desktop/mac#{livecheck_arch}/updates.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Basecamp.app"

  zap trash: [
    "~/Library/Application Support/Basecamp*",
    "~/Library/Preferences/com.basecamp.basecamp*.plist",
    "~/Library/Saved Application State/com.basecamp.basecamp*.savedState",
  ]
end
