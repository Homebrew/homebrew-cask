cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.15"
  sha256 arm:   "53f70e99e7e03e622b16655b847fcae628fa4fbf97d1d16147ba16072f563dfa",
         intel: "d0cabddbeef93448b15125a93b9ccd98d7b321d23baa177511e279620ec9f0f4"

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
