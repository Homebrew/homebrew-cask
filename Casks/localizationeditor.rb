cask "localizationeditor" do
  version "2.8"
  sha256 "0b2f24a4485d338edf7166b6ccbad34c9f0511bb7ecf82bb376440a800121a07"

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  name "LocalizationEditor"
  homepage "https://github.com/igorkulman/iOSLocalizationEditor/"

  depends_on macos: ">= :high_sierra"

  app "LocalizationEditor.app"
end
