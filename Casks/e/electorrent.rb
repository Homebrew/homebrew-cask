cask "electorrent" do
  version "2.13.2"
  sha256 "0809c3b095d9ce7ec107e12ea8aa78f140291460508d3f06e72ee10228d2fb2b"

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
    "~/Library/Application Support/Electorrent",
    "~/Library/Preferences/com.github.tympanix.Electorrent.plist",
    "~/Library/Saved Application State/com.github.tympanix.Electorrent.savedState",
  ]
end
