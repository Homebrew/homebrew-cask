cask "filefillet" do
  version "2.10.0"
  sha256 "48f8781ac1f9cd8d5f40ee29b2c01131967bfa037b64015ad08e3afe856d49eb"

  url "https://filefillet-releases.s3.eu-central-1.amazonaws.com/FileFillet_v#{version}.zip",
      verified: "filefillet-releases.s3.eu-central-1.amazonaws.com/"
  name "FileFillet"
  desc "Efficient file organizer"
  homepage "https://www.filefillet.com/"

  livecheck do
    url "https://filefillet-releases.s3.eu-central-1.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "FileFillet.app"

  zap trash: [
    "~/Library/Application Scripts/com.arensx.FileFillet",
    "~/Library/Containers/com.arensx.FileFillet",
  ]
end
