cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.7.6"
  sha256 arm:   "7c6da6f58cde391de3b2708de34225cb1d6a7890ee01b1deaea46b74b1bb3139",
         intel: "b42b5422ce45a4d6fcfd6c558fe682e2b2a85abe970bb7f752547ea0783188b1"

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
