cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.3"
  sha256 arm:   "899ab8f9900cbb540e986567e47524c545d9a2b68120bc4a0c540b03ad2c98e3",
         intel: "cbd4fa069a77127ea568cfd1200d0bce890311f725afe4ce5f08c08c46fff0bc"

  url "https://github.com/BloopAI/bloop/releases/download/v#{version}/bloop_#{version}_#{arch}.dmg",
      verified: "github.com/BloopAI/bloop/"
  name "bloop"
  desc "Code search engine"
  homepage "https://bloop.ai/"

  depends_on macos: ">= :big_sur"

  app "bloop.app"

  zap trash: [
    "~/Library/Caches/ai.bloop.bloop",
    "~/Library/Preferences/ai.bloop.bloop.plist",
    "~/Library/Saved Application State/ai.bloop.bloop.savedState",
    "~/Library/WebKit/ai.bloop.bloop",
  ]
end
