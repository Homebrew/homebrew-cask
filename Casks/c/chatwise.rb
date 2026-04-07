cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.2"
  sha256 arm:   "a17200f6b09b2703ddc7ae128ac5d6fb1725bb97d445869be16488c2e4bd0658",
         intel: "77078a33cce98a740ce8dc344edfd3c70a6cd9a75ffa5d3665be8f4bd2ff6368"

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
