cask "buildsettingextractor" do
  version "1.4.3"
  sha256 "0c3cf0bc5ff9169080164521fe8214d9876121452820d1c32456b2a8a72cc2b4"

  url "https://github.com/dempseyatgithub/BuildSettingExtractor/releases/download/v#{version}/BuildSettingExtractor_#{version}.dmg"
  name "BuildSettingExtractor"
  desc "Xcode build settings extractor"
  homepage "https://github.com/dempseyatgithub/BuildSettingExtractor"

  depends_on macos: ">= :mojave"

  app "BuildSettingExtractor.app"
end
