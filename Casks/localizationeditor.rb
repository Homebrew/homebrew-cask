cask "localizationeditor" do
  version "2.6"
  sha256 "113eba2fff6939a539d01c8e6c3cde48af1e07546bf9bf60d566a4b456ece763"

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  appcast "https://github.com/igorkulman/iOSLocalizationEditor/releases.atom"
  name "LocalizationEditor"
  homepage "https://github.com/igorkulman/iOSLocalizationEditor/"

  depends_on macos: ">= :high_sierra"

  app "LocalizationEditor.app"
end
