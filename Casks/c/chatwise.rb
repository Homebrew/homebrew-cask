cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.5.1"
  sha256 arm:   "796b6e98e1a1b1ae988bc4372733bc7458a79b4b398421d2ee98f53e576ecadd",
         intel: "75b7abb4641340b6c2851f625b12c11ecc58d12eaee9dbfa81e2ec5f7d84be8b"

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
