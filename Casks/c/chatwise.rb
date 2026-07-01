cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.7.1"
  sha256 arm:   "cfa40ef35e1c2091391321d97ea6a1401189620759ed12d14ef6c8699df5a950",
         intel: "36dbb0cc78f773a8a8ade56f03b25ab06beac2d09ecd2c45dfab71585b75f2b9"

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
