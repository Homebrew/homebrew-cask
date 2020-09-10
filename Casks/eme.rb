cask "eme" do
  version "0.15.1"
  sha256 "60228e7217214b66ab3e07272c7c4dc2fe67e0bb031b89d51062859fb7235d56"

  url "https://github.com/egoist/eme/releases/download/v#{version}/EME-#{version}.dmg"
  appcast "https://github.com/egoist/eme/releases.atom"
  name "EME"
  desc "Markdown editor"
  homepage "https://github.com/egoist/eme"

  auto_updates true

  app "EME.app"
end
