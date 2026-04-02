cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "9.6.1"
  sha256 arm:   "f27fa1aec0b3e84533e1ff9079184873007e67d30fc957f7021d406c34557235",
         intel: "a0e1971120e722f6f4687c4cf1a041bf0a7200c18d8bae3fd7b26b72daf40640"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.#{arch}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url "https://api.mockoon.com/releases/desktop/stable.json"
    strategy :json do |json|
      json["tag"]
    end
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
