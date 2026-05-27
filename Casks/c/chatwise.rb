cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.5.2"
  sha256 arm:   "4d980d78b90a6096e5c3e52681ee08fe3141442994b2299c290d8f07a2349f95",
         intel: "d20cd5129d1a34dbce05e9e9f3fec2b77c9375cf6340348845b53fa40d07731e"

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
