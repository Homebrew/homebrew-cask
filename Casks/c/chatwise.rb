cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.33"
  sha256 arm:   "0a12940e1baf7af91b6c7d2ea79bdd552a70a9b98c604052608a188851f312fc",
         intel: "c975e2e5f951a5f69ea14cc2baf4860a149df975efcc1355ad1ddcc77f473f43"

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
