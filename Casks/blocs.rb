cask "blocs" do
  version "4.0.2,402"
  sha256 "362e8f22528984824d975648e28ae086217577a98f186a442893de020a790070"

  url "https://blocsapp.com/download/Blocs.zip"
  appcast "https://blocsapp.com/update/v#{version.major}/info.xml"
  name "Blocs"
  desc "Visual web design software"
  homepage "https://blocsapp.com/"

  auto_updates true
  container nested: "Blocs/Blocs-#{version.major}.dmg"

  app "Blocs.app"
end
