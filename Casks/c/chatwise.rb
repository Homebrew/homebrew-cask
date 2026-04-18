cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.9"
  sha256 arm:   "d2f12502e45c189f8e58d8458845b7e6b3a2b5fc185e34c7aea64f74bb21920d",
         intel: "2f063c5cefb49d22c0a34a46b9634eec8a30f5d3eef018653c579cae89e4f416"

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
