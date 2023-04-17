cask "parsify" do
  arch arm: "arm64", intel: "x64"

  version "2.0.0"
  sha256 arm:   "d36a2929fb117e00765ca30bd1c7e55b1d01b72902ffc04969b69b28df1bd2b0",
         intel: "b6de9b267b9cb77c4839feb7f09419bf6cb609ab28a8eafbea5b2b6da340266f"

  url "https://github.com/parsify-dev/desktop/releases/download/v#{version}/Parsify-#{version}-mac-#{arch}.zip",
      verified: "github.com/parsify-dev/desktop/"
  name "Parsify"
  desc "Extensible calculator with unit and currency conversions"
  homepage "https://parsify.app/"

  app "Parsify.app"

  zap trash: [
    "~/Library/Application Support/Parsify Desktop",
    "~/Library/Preferences/app.parsifydesktop.plist",
    "~/Library/Saved Application State/app.parsify.parsifydesktop.savedState",
  ]
end
