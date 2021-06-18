cask "buildsettingextractor" do
  version "1.4.2"
  sha256 "0ec12a9897178d643120d48403bc6b946fef3ea690c25eaa54d40fb57ab49e6c"

  url "https://github.com/dempseyatgithub/BuildSettingExtractor/releases/download/v#{version}/BuildSettingExtractor_#{version}.dmg"
  name "BuildSettingExtractor"
  homepage "https://github.com/dempseyatgithub/BuildSettingExtractor"

  depends_on macos: ">= :mojave"

  app "BuildSettingExtractor.app"
end
