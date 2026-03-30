cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.35"
  sha256 arm:   "2040485e39f775bf2d75cf376b2dbd3ba71b77add7bef0f3e09cce9a48b6820c",
         intel: "a51a93751280ec69b9ef592c3d46bf9927861049838a578750904514f5c78a14"

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
