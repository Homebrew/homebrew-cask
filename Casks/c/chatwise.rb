cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.5"
  sha256 arm:   "aec1ce99401ea2881bf6bf7deff96754eef772220129807a47624948eee84c07",
         intel: "2878594ab2b764ec404b175411e197c1e9d95cb4d3435b19890ea267b9c138f0"

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
