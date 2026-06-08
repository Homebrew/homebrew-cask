cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.5.3"
  sha256 arm:   "cdcebed8bd51e4e97aea7fba216e932500f122749bfc1de3c7eb425fa234eb1d",
         intel: "beca1727b4dfeb16b2626c2f1603d234d9eb069100c17056a6b47f44d465868f"

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
