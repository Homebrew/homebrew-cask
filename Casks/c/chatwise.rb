cask "chatwise" do
  arch arm: "arm64", intel: "x64"

  version "26.3.21"
  sha256 arm:   "/S28y/3Isdb5iEJpl0mGqo0d1FzdutHF486sKyRaeROOr7SyNoXzVK99KeUPJ2aHVS8x4/MqxN2JRKxuwsK4xQ=="
         intel: "DTYVz92qdatRtCijnH6NsPQz+eeAzRu9l7G+D0fsOJKIgOu/2fcfiGfAmSI/IYU/IxOd7wsi7PKZtucOsRYjAQ=="

  url "https://releases.chatwise.app/#{version}/ChatWise-#{version}-#{arch}.dmg",
    verified: "releases.chatwise.app/"
  name "ChatWise"
  desc "AI chatbot for many LLMs"
  homepage "https://chatwise.app/"

  livecheck do
    url "https://releases.chatwise.app/releases"
    strategy :json do |json|
      Array(json).filter_map { |item| item["version"] }
    end
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
