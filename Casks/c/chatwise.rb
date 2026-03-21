cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.22"
  sha256 arm:   "775b0b9a412121e92907e8243b4d125dcda5baee52ab345e12d01cd656b8752c",
         intel: "c65fd089a9f8af3288398510367e648db4427c7abb0f25b4b8c757ff4a4eb230"

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
