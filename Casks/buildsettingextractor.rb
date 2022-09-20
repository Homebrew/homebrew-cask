cask "buildsettingextractor" do
  version "1.4.5"
  sha256 "484457ea99fbda03127213bd7e5050d2454838321ef05c7badfca076b7aef307"

  url "https://github.com/dempseyatgithub/BuildSettingExtractor/releases/download/v#{version}/BuildSettingExtractor_#{version}.dmg"
  name "BuildSettingExtractor"
  desc "Xcode build settings extractor"
  homepage "https://github.com/dempseyatgithub/BuildSettingExtractor"

  depends_on macos: ">= :mojave"

  app "BuildSettingExtractor.app"
end
