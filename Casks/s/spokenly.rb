cask "spokenly" do
  version "2.27.5"
  sha256 "229f6ac9af202f957ecab78b5f97f7ea343a854cc2652155b3a8a8e8828b6597"

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
    "~/Library/Application Support/app.spokenly.revenuecat",
    "~/Library/Application Support/Spokenly",
    "~/Library/Caches/app.spokenly",
    "~/Library/HTTPStorages/app.spokenly",
    "~/Library/Preferences/app.spokenly.plist",
  ]
end
