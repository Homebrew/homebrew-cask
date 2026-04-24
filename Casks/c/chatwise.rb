cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.13"
  sha256 arm:   "4a2845a523d25d74e2a839d73f62d43013bb7bfe26dd5a5e6c4be57092f0a92e",
         intel: "b8d7383f2eeb457f8e2ebed9c1d8abaa38c02912c2c2c247ba2df256eaed9a07"

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
