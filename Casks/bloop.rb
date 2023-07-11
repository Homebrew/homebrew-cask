cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.4.7"
  sha256 arm:   "8c725486016e5a08ddad2f6ff4b8d0f5be2fb6466179f312226d89db853aeb42",
         intel: "db2b194899fe20f8fbfb39816f50639da33103efab7a33cc44e37acd17f43dc3"

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
