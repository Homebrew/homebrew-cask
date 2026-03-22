cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.25"
  sha256 arm:   "4ef0fb18a807cf5d504686ded2eb743a515fdd6cb388b905f91e88389ddec127",
         intel: "dd4b5bb3872d93541da883af012138b46d9f422faf3e333fdcb3110a69f271f7"

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
