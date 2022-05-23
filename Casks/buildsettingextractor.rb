cask "buildsettingextractor" do
  version "1.4.4"
  sha256 "22b1b5c6029fb3ed066769d48a85c4658fc9cc99a02666dc174bd533fd185f05"

  url "https://github.com/dempseyatgithub/BuildSettingExtractor/releases/download/v#{version}/BuildSettingExtractor_#{version}.dmg"
  name "BuildSettingExtractor"
  desc "Xcode build settings extractor"
  homepage "https://github.com/dempseyatgithub/BuildSettingExtractor"

  depends_on macos: ">= :mojave"

  app "BuildSettingExtractor.app"
end
