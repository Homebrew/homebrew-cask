cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.8.26"
  sha256 arm:   "8da86240a41859601031ca36b0cd8d1995ed462af278d5fa872579abb21686ca",
         intel: "1ae5beb0960cda3c649e389433f9a17372286b66f82101a6d11c7850e891528f"

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
