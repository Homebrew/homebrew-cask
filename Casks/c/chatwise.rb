cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.29"
  sha256 arm:   "372500b8f38b7c82e79f1d2bef1d9ee942be7903a26ecce904009310693c0550",
         intel: "509d2577a85afaa276dfad742765f17c9d749f9837929c76fbd77a4f5ddab2fd"

  url "https://releases.chatwise.app/#{version}/ChatWise-#{version}-#{arch}.dmg"
  name "ChatWise"
  desc "AI chatbot for many LLMs"
  homepage "https://chatwise.app/"

  livecheck do
    url "https://releases.chatwise.app/releases"
    strategy :json do |json|
      json.map { |v| v["version"] }
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "ChatWise.app"

  uninstall quit: "app.chatwise"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end
