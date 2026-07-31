cask "spokenly" do
  version "2.27.6"
  sha256 "8fee17d521cad472297592251cd720e2e6313e859e4a923ebc8d513553891e12"

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
