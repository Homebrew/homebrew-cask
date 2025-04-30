cask "freeshow" do
  arch arm: "arm64", intel: "x64"

  version "1.4.1"
  sha256 arm:   "59e893dda9eeac6f080ec9ffa1b9280cff88c51bc19b1f9c4774f87c2a3152fd",
         intel: "b3a859deba1f0b91188fe2051d2e16a5e022a6f6f7cdb9527cbfe8b8ca3acf32"

  url "https://github.com/ChurchApps/FreeShow/releases/download/v#{version}/FreeShow-#{version}-#{arch}.zip",
      verified: "github.com/ChurchApps/"
  name "FreeShow"
  desc "Presentation software"
  homepage "https://freeshow.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FreeShow.app"

  zap trash: [
        "~/Library/Application Support/freeshow",
        "~/Library/Preferences/app.freeshow.plist",
        "~/Library/Saved Application State/app.freeshow.savedState",
      ],
      rmdir: "~/Documents/FreeShow"
end
