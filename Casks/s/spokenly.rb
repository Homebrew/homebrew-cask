cask "spokenly" do
  version "2.20.5"
  sha256 "20784733ef63c0b0f324968d3eef47e672dbfed93b72d3ef9c9e024accf422b2"

  url "https://cdn.spokenly.app/releases/macos/Spokenly-#{version}.dmg"
  name "Spokenly"
  desc "Dictation and transcription app with AI-powered editing"
  homepage "https://spokenly.app/"

  livecheck do
    url "https://spokenly.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Spokenly.app"

  zap trash: [
    "~/Library/Application Support/Spokenly",
    "~/Library/Caches/app.spokenly",
    "~/Library/Preferences/app.spokenly.plist",
  ]
end
