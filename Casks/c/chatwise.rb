cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.9.0"
  sha256 arm:   "2b9367e2e81bd51b09d25e884961a80b59d8d9d2d0e4d02a5e6b0ebba0baf322",
         intel: "3f320acb1740ca6f3eedb50f4d9cbf15e9d3fda9951651bae948f4d2588a2389"

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
