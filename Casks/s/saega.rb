cask "saega" do
  version "1.9.0"
  sha256 "4f1e79900d4e3062d68c922816670f3bc7b9e2765a5e9019466487dad900acc8"

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
