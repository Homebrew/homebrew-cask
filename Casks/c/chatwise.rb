cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.7.5"
  sha256 arm:   "2de0d336fa30670d0dcb1f86c3a862964f8242e07fec3af66dded0021ecdeed4",
         intel: "251ea9b24a22c9f7d6c6a707c0429754d7ff0400ff2d3dc582e647095841575c"

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
