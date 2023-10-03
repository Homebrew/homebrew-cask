cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.4"
  sha256 arm:   "f65412d337eb73a7ba9a8e82ed85fbd10b0e7a0e51cf848ac4bc7efd887d0d0f",
         intel: "f183e836df1c352c62bfa687968947ae35ce50eb20ddcaf452e3ece5647adb4a"

  url "https://github.com/BloopAI/bloop/releases/download/v#{version}/bloop_#{version}_#{arch}.dmg",
      verified: "github.com/BloopAI/bloop/"
  name "bloop"
  desc "Code search engine"
  homepage "https://bloop.ai/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :big_sur"

  app "bloop.app"

  zap trash: [
    "~/Library/Caches/ai.bloop.bloop",
    "~/Library/Preferences/ai.bloop.bloop.plist",
    "~/Library/Saved Application State/ai.bloop.bloop.savedState",
    "~/Library/WebKit/ai.bloop.bloop",
  ]
end
