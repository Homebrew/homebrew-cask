cask "mockoon" do
  arch arm: "arm64", intel: "x64"

  version "9.0.0"
  sha256 arm:   "be55ff94acf889fb36f9b12af50034bcbfbc86ee1e4b9660600308ffec16d436",
         intel: "b771ef2b51f74922db47ac104036e2e2b5f020244a2e791c5c88be2e4e24929e"

  url "https://github.com/mockoon/mockoon/releases/download/v#{version}/mockoon.setup.#{version}.#{arch}.dmg",
      verified: "github.com/mockoon/mockoon/"
  name "Mockoon"
  desc "Create mock APIs in seconds"
  homepage "https://mockoon.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Mockoon.app"

  zap trash: [
    "~/Library/Application Support/mockoon",
    "~/Library/Logs/Mockoon",
    "~/Library/Preferences/com.mockoon.app.plist",
    "~/Library/Saved Application State/com.mockoon.app.savedState",
  ]
end
