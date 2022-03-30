cask "dbilgili-google-translate" do
  version "1.0.2"
  sha256 "f600da9489fe562348b0cd11c41934e59888e5ba3bf63c6edcf15753b979b2fc"

  url "https://github.com/dbilgili/GoogleTranslate/releases/download/#{version}/Translator-#{version}.dmg.zip"
  name "dbilgili-google-translate"
  desc "Menu bar app to access Google Translate quickly"
  homepage "https://github.com/dbilgili/GoogleTranslate"

  app "Translator.app"
end
