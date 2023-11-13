cask "bloop" do
  arch arm: "aarch64", intel: "x64"

  version "0.5.9"
  sha256 arm:   "bc09158f67eb9ae0a229d960f11b5946e5cb705bc4a062d6a48ae1fab4285274",
         intel: "87f2611e60893978247ac91d8a37df7d1acb91a1b44fdbf37329585fb92ba89a"

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
