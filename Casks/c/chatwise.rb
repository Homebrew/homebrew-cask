cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.4.4"
  sha256 arm:   "3489db1d11b28c0ac8d30e5fa4039b63498b6fda2928085265778a1caccdb378",
         intel: "1a2cb2998775bdac27e945b905f6354306dda40fa4933381b4b672fa8f2dec9a"

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
