cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.6.0"
  sha256 arm:   "a9fcde761816ba3d3d8b2577687ff1621bd34af95b7b7b5bbbd470377a1cd4ac",
         intel: "bbb13459397929355cd0bd69ce47b17c5968090b2035b5dd9a217bc2532dbf09"

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
