cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.14"
  sha256 arm:   "eeafc2dc35622a9c19b20bbf5446cb443c069eb6c0320640f040b6c5f5953d03",
         intel: "2e24b08bdd40fd37376cb3fb76f3fd2eb9142696ba42169d28026c1268cd5764"

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
