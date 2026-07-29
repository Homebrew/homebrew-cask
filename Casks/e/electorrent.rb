cask "electorrent" do
  version "2.15.0"
  sha256 "f6680ddf5574fcbfdcd6f88417db35cda45fe83d9e54ad19436aab406b257dd0"

  url "https://github.com/tympanix/Electorrent/releases/download/v#{version}/Electorrent-#{version}-universal.dmg"
  name "Electorrent"
  desc "Desktop remote torrenting application"
  homepage "https://github.com/tympanix/Electorrent"

  livecheck do
    url "https://electorrent.vercel.app/update/dmg/0.0.0"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      json["name"]&.[](regex, 1)
    end
  end

  disable! date: "2026-09-01", because: :fails_gatekeeper_check

  auto_updates true
  depends_on macos: :monterey

  app "Electorrent.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.github.tympanix.electorrent.sfl*",
    "~/Library/Application Support/Electorrent",
    "~/Library/Preferences/com.github.tympanix.Electorrent.plist",
    "~/Library/Saved Application State/com.github.tympanix.Electorrent.savedState",
  ]
end
