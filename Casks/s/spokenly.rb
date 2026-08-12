cask "spokenly" do
  version "2.27.16"
  sha256 "8bc0840bd139eeb59c3d36e633927aa45e379b39a4f2d04a100aa4317c36c7dc"

  url "https://cdn.spokenly.app/releases/macos/Spokenly-#{version}.dmg"
  name "Spokenly"
  desc "Dictation and transcription app with AI-powered editing"
  homepage "https://spokenly.app/"

  livecheck do
    url "https://spokenly.app/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :ventura

  app "Spokenly.app"

  zap trash: [
    "~/Library/Application Support/app.spokenly.revenuecat",
    "~/Library/Application Support/Spokenly",
    "~/Library/Caches/app.spokenly",
    "~/Library/HTTPStorages/app.spokenly",
    "~/Library/Preferences/app.spokenly.plist",
  ]
end
