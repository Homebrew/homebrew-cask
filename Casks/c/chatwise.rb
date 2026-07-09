cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.7.2"
  sha256 arm:   "a859dbeb87ad17d90ebf6418dfc36bfd774a7cdc8541018ff9ed07c91ab99ab2",
         intel: "35a876bd7a9699ab3859b48157791ee46e4046c61a5d4bf26a1ba909b3660f47"

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
