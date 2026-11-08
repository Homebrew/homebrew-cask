cask "saega" do
  version "1.5.2"
  sha256 "221debc78740f2343d8ae45fb5d1811c4d54a08715bd434382055e53f6ca08cd"

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
