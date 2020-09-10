cask "reactotron" do
  version "2.17.1"
  sha256 "0b498386dd5feecd8f5137a629cf2f3170c6c92f1d33eb8e40831e4daddfc959"

  url "https://github.com/infinitered/reactotron/releases/download/v#{version}/Reactotron-#{version}-mac.zip"
  appcast "https://github.com/infinitered/reactotron/releases.atom"
  name "Reactotron"
  desc "Desktop app for inspecting React JS and React Native projects"
  homepage "https://github.com/infinitered/reactotron"

  auto_updates true

  app "Reactotron.app"

  zap trash: [
    "~/Library/Application Support/Reactotron",
    "~/Library/Preferences/com.reactotron.app.helper.plist",
    "~/Library/Preferences/com.reactotron.app.plist",
    "~/Library/Saved Application State/com.reactotron.app.savedState",
  ]
end
