cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.36"
  sha256 arm:   "bcccb0e816ebe245f31f0856cb3b05fc54ef6487c19471b3b8a37596f0f286cc",
         intel: "3b1a2e078f29644a6ce553b3243086e3918ad9a6577977cd32b66f4d6a6da5b5"

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
