cask "spokenly" do
  version "2.22.0"
  sha256 "03e4c2b51c3ff7d123ed0e3b118c9d61222cbfdc835b2ae949953caaf81b7e35"

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
