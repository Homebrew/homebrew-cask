cask "chatwise" do
  arch arm: "aarch64", intel: "x64"

  version "0.6.84"
  sha256 arm:   "f8fcb0e539424d1ba3a3051e1cd12a62675024e61512db8049437a934e95d7d3",
         intel: "b4b553352674a4e73b25210ffe71ce4526c8290ca710fa2352728d462b06ae14"

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
