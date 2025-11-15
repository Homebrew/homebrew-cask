cask "badgeify" do
  arch arm: "aarch64", intel: "x86_64"

  version "1.9.4"
  sha256 arm:   "ca6f14f8158a989a6b63ac380eda57063f5101cc9a83ac1dce0d6e593e2baa70",
         intel: "dbe86f56f44b83280fd71c9c280a574b5070fd2be5020b0649e0115f03c47d5d"

  url "https://api.badgeify.app/release/download/darwin/#{arch}/#{version}"
  name "Badgeify"
  desc "Add apps to the menu bar"
  homepage "https://badgeify.app/"

  livecheck do
    url "https://api.badgeify.app/release/latest"
    regex(/v?(\d+(?:\.\d+)+)/i)
  end

  auto_updates true

  app "Badgeify.app"

  uninstall quit: "studio.techflow.badgeify"

  zap trash: [
    "~/Library/Application Support/studio.techflow.badgeify",
    "~/Library/Caches/studio.techflow.badgeify",
    "~/Library/Logs/studio.techflow.badgeify",
    "~/Library/Preferences/studio.techflow.badgeify.plist",
    "~/Library/WebKit/studio.techflow.badgeify",
  ]
end
