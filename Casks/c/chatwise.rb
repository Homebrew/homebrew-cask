cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.31"
  sha256 arm:   "74e54e2b5077af3d01ab7b580f0b134b17277ba7dc8f8d504344a64f18220b94",
         intel: "2965b33bf73090d076d798e0d93009df63d83ee55d7c49866d25285748bad787"

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
