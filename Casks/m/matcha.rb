cask "matcha" do
  version "1.4.0"
  sha256 "e88d00856a6b52b9eba39c1a14638f73fcfe64fd6c5ad0bdb11ff1d618ba36ef"

  url "https://github.com/jakeantelis/Matcha/releases/download/v#{version}/Matcha.zip"
  name "Matcha"
  desc "Keep your Mac awake for builds, exports, and AI coding agents"
  homepage "https://github.com/jakeantelis/Matcha"

  depends_on macos: ">= :big_sur"

  app "Matcha.app"

  zap trash: [
    "~/Library/Application Support/Matcha",
    "~/Library/Preferences/com.matcha.app.plist",
  ]
end