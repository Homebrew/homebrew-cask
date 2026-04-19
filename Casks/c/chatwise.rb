cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.11"
  sha256 arm:   "7f2d4ffad355130c57677eddadf958b1ceaafea6ef8969e459cb1ed3a890db13",
         intel: "5c4f0b1d0fd67232fab408d4655be96ddfcd536342e8bd0a92c30322d847b625"

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
