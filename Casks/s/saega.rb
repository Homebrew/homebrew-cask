cask "saega" do
  version "1.8.0"
  sha256 "af4df53fb79dbc38a9517566854fb53bfb0d4ca97809b0eea515d04b8d954126"

  url "https://storage.googleapis.com/saega-downloads/Saega-#{version}.dmg"
  name "Saega"
  desc "Dictation and meeting transcription for Swedish and Norwegian"
  homepage "https://saega.app/"

  livecheck do
    url "https://saega.app/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch:  :arm64
  depends_on macos: :sonoma

  app "Saega.app"

  zap trash: [
    "~/Library/Application Support/Saega",
    "~/Library/Caches/app.saega.app",
    "~/Library/HTTPStorages/app.saega.app",
    "~/Library/Logs/Saega",
    "~/Library/Preferences/app.saega.app.plist",
  ]
end
