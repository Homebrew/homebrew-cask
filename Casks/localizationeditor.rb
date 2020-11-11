cask "localizationeditor" do
  version "2.7"
  sha256 "36b551052aa37f8961fcc9274bba0bc101a35f1f9bfc0b22b6f2b8caeccb9a3e"

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  appcast "https://github.com/igorkulman/iOSLocalizationEditor/releases.atom"
  name "LocalizationEditor"
  homepage "https://github.com/igorkulman/iOSLocalizationEditor/"

  depends_on macos: ">= :high_sierra"

  app "LocalizationEditor.app"
end
