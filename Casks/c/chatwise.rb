cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.21"
  sha256 arm:   "a4a46630471c71ea63743bbb5018ad5f21a0eff1a76c5144cc05e84fd7629a38",
         intel: "8b7bfc97248218f5e20ba763ec5cc838de4fec1d5372236f3bcba53d0b49a754"

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
