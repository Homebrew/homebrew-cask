cask "sparkplate" do
  version "1.0.0"
  sha256 "f9bff9256c4c95bf1a53b9c074e6a3f44d35e75043a404f306c1bd09121e93e7"

  url "https://github.com/GreenfireInc/homebrew-sparkplate/releases/download/v#{version}/Sparkplate.zip"
  name "Sparkplate"
  desc "Features a test page for resolving human readable domains to crypto addresses"
  homepage "https://github.com/GreenfireInc/Sparkplate.Vue"

  depends_on macos: ">= :high_sierra"

  app "Sparkplate.app"

  zap trash: [
    "~/Library/Application Support/sparkplate",
    "~/Library/Preferences/com.sparkplate.app.plist",
    "~/Library/Preferences/io.greenfire.sparkplate-.plist",
    "~/Library/Preferences/io.greenfire.sparkplate.helper.plist",
    "~/Library/Preferences/io.greenfire.sparkplate.plist",
    "~/Library/Saved Application State/com.sparkplate.app.savedState",
    "~/Library/Saved Application State/io.greenfire.sparkplate.savedState",
  ]
end
