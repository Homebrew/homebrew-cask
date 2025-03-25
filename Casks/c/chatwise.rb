cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.14"
  sha256 arm:   "f4bafc09acc76f045eed726389a160d3091fed00661ebccd729102525c265ec2",
         intel: "f540ecd17c2bb372ad16abd59e0d1f228568d19caa635cb5e80fdcacb674ec5f"

  url "https://github.com/egoist/chatwise-releases/releases/download/v#{version}/ChatWise_#{version}_#{arch}.dmg",
      verified: "github.com/egoist/chatwise-releases/"
  name "ChatWise"
  desc "AI chatbot for many LLMs"
  homepage "https://chatwise.app/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "ChatWise.app"

  uninstall quit: "app.chatwise"

  zap trash: [
    "~/Library/Application Support/app.chatwise",
    "~/Library/Caches/app.chatwise",
    "~/Library/Saved Application State/app.chatwise.savedState",
    "~/Library/WebKit/app.chatwise",
  ]
end
