cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.76"
  sha256 arm:   "1985c85a9f6d00f3f833064d12782a4d672e8d9f8c22c604e365100da36aa962",
         intel: "ed8f4d403067ea3ea3343134df4c15a7370f0c81b6ddf8eb513484e978bed473"

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
