cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.8"
  sha256 arm:   "46913090c3f128196c387657f93c63f40d55f1be15361c403e1d0632b7607394",
         intel: "d55bd59f48681d08f09ec37c93a26cd9854e9378daf5a091d054a89954079afa"

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
