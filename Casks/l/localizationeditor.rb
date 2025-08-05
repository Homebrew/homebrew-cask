cask "localizationeditor" do
  version "2.9.2"
  sha256 "6415313128c1dbbcc0432e7108c2eba87e558ad0b5f6a4a6c80243ceb97220ea"

  url "https://github.com/igorkulman/iOSLocalizationEditor/releases/download/v#{version}/LocalizationEditor.app.zip"
  name "LocalizationEditor"
  desc "iOS app localization manager"
  homepage "https://github.com/igorkulman/iOSLocalizationEditor/"

  depends_on macos: ">= :mojave"

  app "LocalizationEditor.app"

  # No zap stanza required
end
