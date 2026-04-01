cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.0"
  sha256 arm:   "273c5d42e7ad9c7c835ff57ff22ed57eac3dc3768d590af71293f58eb0609a6a",
         intel: "b12cb112cb0968a0c88f153d136bf14116206118cd7339af65a359dbfd60a2a7"

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
