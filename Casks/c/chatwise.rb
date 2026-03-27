cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.34"
  sha256 arm:   "ab15ca0d22186fed4c99783cc900a943c837882820d76076befc6f923b5ee314",
         intel: "15b3cc68ae20a72d07ec9c5f637595398b72321fec34bb26788c154d436aca36"

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
