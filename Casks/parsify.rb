cask "parsify" do
  arch arm: "arm64", intel: "x64"

  version "1.9.3"
  sha256 arm:   "bf59ca43fd4f380aed968374b4cb7ddae675353306ee3e29a30a44e98fb5f25b",
         intel: "1c42a8d7e96f08b54afe7fd279dfb44fd8b757c52be6ce9c7a03902371d2f6a6"

  url "https://github.com/parsify-dev/desktop/releases/download/v#{version}/Parsify-Desktop-#{version}-mac-#{arch}.zip",
      verified: "github.com/parsify-dev/desktop/"
  name "Parsify"
  desc "Extensible calculator with unit and currency conversions"
  homepage "https://parsify.app/"

  app "Parsify Desktop.app"

  zap trash: [
    "~/Library/Application Support/Parsify Desktop",
    "~/Library/Preferences/app.parsifydesktop.plist",
    "~/Library/Saved Application State/app.parsify.parsifydesktop.savedState",
  ]
end
