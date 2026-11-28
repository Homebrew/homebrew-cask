cask "filefillet" do
  version "2.11.2"
  sha256 "bc165081e0d9dd94c18ac006802e9f8f20cdab9ccd6daa1f87887a0d558c36db"

  url "https://filefillet-releases.s3.eu-central-1.amazonaws.com/FileFillet_v#{version}.zip"
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
