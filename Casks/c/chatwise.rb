cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.8.0"
  sha256 arm:   "afd61ac56b6c65627bb2ee313d7dd46070d1d4dcd6bf56b2dc907415d6405284",
         intel: "97a402e955fb51cbd78355c367d50faac3f209077af985972de83c6bf46129c9"

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
  depends_on macos: :monterey

  app "ChatWise.app"

  uninstall quit: "app.chatwise"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end
