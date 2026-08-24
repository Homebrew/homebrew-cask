cask "antinote" do
  version "2.0.10"
  sha256 "8402aae2a57547cd919055c4f78c47f22c9d644b19d29b5662970519565b1240"

  url "https://antinote.io/updates/Antinote_#{version}.dmg"
  name "Antinote"
  desc "Temporary notes with calculations and extensible features"
  homepage "https://antinote.io/"

  livecheck do
    url "https://antinote.io/updates/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Antinote.app"

  zap trash: [
    "~/Library/Application Scripts/com.chabomakers.Antinote",
    "~/Library/Containers/com.chabomakers.Antinote",
  ]
end
