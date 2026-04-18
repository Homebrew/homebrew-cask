cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.10"
  sha256 arm:   "5a0fefa397b521599a42b4011b042d4aa25d01d8ceeb356c2b6aa5037c6832a8",
         intel: "b808486af6ce6647c6637c0a5278f201234a8f2bba10ef07fb41ac9c6998b4d3"

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
