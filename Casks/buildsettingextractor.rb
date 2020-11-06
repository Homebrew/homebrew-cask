cask "buildsettingextractor" do
  version "1.4.1"
  sha256 "2df87f5a23ef63f151b37b71c513c598cf612ffac113ee65f9f677281a26280b"

  url "https://github.com/dempseyatgithub/BuildSettingExtractor/releases/download/v#{version}/BuildSettingExtractor_#{version}.dmg"
  appcast "https://github.com/dempseyatgithub/BuildSettingExtractor/releases.atom"
  name "BuildSettingExtractor"
  homepage "https://github.com/dempseyatgithub/BuildSettingExtractor"

  depends_on macos: ">= :mojave"

  app "BuildSettingExtractor.app"
end
