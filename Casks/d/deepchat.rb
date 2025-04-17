cask "deepchat" do
  arch arm: "arm64", intel: "x64"

  version "0.0.15"
  sha256  arm:   "ea6c4121565f9cfa0aee31d825c11b63897da1219edf88901caf4ee579ce32ff",
          intel: "37544f4ab591a1c0085becd3aac934bd2b5681c243fce5ee89a257e2426d9de8"

  url "https://github.com/ThinkInAIXYZ/deepchat/releases/download/v#{version}/DeepChat-#{version}-mac-#{arch}.dmg",
      verified: "github.com/ThinkInAIXYZ/deepchat/"
  name "DeepChat"
  desc "Smart assistant that connects powerful AI to your personal world"
  homepage "https://deepchat.thinkinai.xyz/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "DeepChat.app"
  binary "#{appdir}/DeepChat.app/Contents/MacOS/DeepChat", target: "deepchat"

  zap trash: [
    "~/Library/Application Support/DeepChat",
    "~/Library/Logs/DeepChat",
    "~/Library/Preferences/com.wefonk.deepchat.plist",
    "~/Library/Saved Application State/com.wefonk.deepchat.savedState",
  ]
end
