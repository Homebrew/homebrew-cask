cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.7.8"
  sha256 arm:   "ef3e8c0e8685c690bd692bd1d0449f40aa10bb1051af534f00a381271a447d64",
         intel: "717fae2eb44066e307374fecd87b38536f995696ce25b0c0146de6811750dd42"

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
