cask "filefillet" do
  version "2.11.1"
  sha256 "2d844ba41bdd99863d409a860b631f0ab63112127523e3ecd55991578a3bad97"

  url "https://filefillet-releases.s3.eu-central-1.amazonaws.com/FileFillet_v#{version}.zip",
      verified: "filefillet-releases.s3.eu-central-1.amazonaws.com/"
  name "FileFillet"
  desc "Efficient file organizer"
  homepage "https://www.filefillet.com/"

  livecheck do
    url "https://filefillet-releases.s3.eu-central-1.amazonaws.com/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "FileFillet.app"

  zap trash: [
    "~/Library/Application Scripts/com.arensx.FileFillet",
    "~/Library/Containers/com.arensx.FileFillet",
  ]
end
