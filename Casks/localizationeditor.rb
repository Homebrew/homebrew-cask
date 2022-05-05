cask "localizationeditor" do
  version "2.9"
  sha256 "7c7f3c9d64763401fca9921b4c2b4d175b96aacc43d362334dedcba1e62cbb2e"

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  name "LocalizationEditor"
  desc "iOS app localization manager"
  homepage "https://github.com/igorkulman/iOSLocalizationEditor/"

  depends_on macos: ">= :high_sierra"

  app "LocalizationEditor.app"
end
