cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.23"
  sha256 arm:   "4f24ae2c4f812bca94ce18ddf81890385d30cbdb5302d5164029560bba96a630",
         intel: "46d2d3e24a5059c45dcde9954b5bc443c4489a421c277a3b873c61158fac8115"

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
