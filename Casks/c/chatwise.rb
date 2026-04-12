cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.3"
  sha256 arm:   "e19cd861fbc45746f7ca2250d946445e84a6ce4ac0e1f756a64f29b285fdcf30",
         intel: "4a552a37c47b4a1d4421f9494c78c7f6c1ac11496e0b9f90ee8d763304aca787"

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
