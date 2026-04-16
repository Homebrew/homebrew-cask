cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.7"
  sha256 arm:   "49754e26e6a61b0a03df396138f7e9369a4a3b5bdb5c9968465271e5b7526f58",
         intel: "21b6806281e0f7e6cf2066e24ffbf6a223eb008e91a518666338e73708de2870"

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
