cask "electorrent" do
  version "2.16.0"
  sha256 "c693d0aa4702b94a25529095233cf53942f0fa0d92a57131489a72c1f2e0f54a"

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
