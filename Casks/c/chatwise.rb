cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.7.3"
  sha256 arm:   "285ecdf7225ad044a2d3801c70016d2521e1046134bc576c7c0befd896c8cd86",
         intel: "c4d39d32aac2f7cee3275436ec6f7242f206ab5c5e11fac583c7eeed3566a1eb"

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
