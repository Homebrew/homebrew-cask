cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.9.1"
  sha256 arm:   "d0ca9127b43fbbbba9bf328b41b487efc00455e455401e2e0bc405193f91eab2",
         intel: "2100e58f7db163d920615d9744dd2540cd96d3c3b521e5a289676dee5848ae33"

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
