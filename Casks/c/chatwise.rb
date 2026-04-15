cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.6"
  sha256 arm:   "9cfab1388cd27da1f7195c5c4419a53b30f6160689cb1118468b9ba13892728c",
         intel: "04e7de8edb85d6456648d740ecafa3fe038a70064244769ff7542d947d51e165"

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
