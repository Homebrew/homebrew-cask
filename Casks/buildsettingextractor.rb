cask "buildsettingextractor" do
  version "1.4.6"
  sha256 "a8828f75838bf026c75f6847be458a2488e4c6ccaf3158321c5084eba733d341"

  url "https://github.com/dempseyatgithub/BuildSettingExtractor/releases/download/v#{version}/BuildSettingExtractor_#{version}.dmg"
  name "BuildSettingExtractor"
  desc "Xcode build settings extractor"
  homepage "https://github.com/dempseyatgithub/BuildSettingExtractor"

  depends_on macos: ">= :mojave"

  app "BuildSettingExtractor.app"

  zap trash: [
    "~/Library/Application Scripts/net.tapas-software.BuildSettingExtractor",
    "~/Library/Containers/net.tapas-software.BuildSettingExtractor",
  ]
end
