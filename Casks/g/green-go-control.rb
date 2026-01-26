cask "green-go-control" do
  version "5.2.1"
  sha256 "47c370815e76bd504e975e1e09e692d960b64c4019bfceaedcbf334d48583bf9"

  url "https://downloads.greengoconnect.com/#{version}/macos/green-go-control.dmg",
      verified: "downloads.greengoconnect.com/"
  name "Green-GO Control"
  desc "Configure and manage Green-GO intercom systems"
  homepage "https://www.greengodigital.com/"

  livecheck do
    url "https://manual.greengoconnect.com/en/release-notes/software/"
    regex(%r{href=.*?/(\d+(?:\.\d+)+)/macos/green-go-control\.dmg}i)
  end

  depends_on macos: ">= :big_sur"

  app "Green-GO Control.app"

  zap trash: [
    "~/Library/Application Support/green-go-control",
    "~/Library/Logs/green-go-control",
    "~/Library/Preferences/com.green-go.control.plist",
    "~/Library/Saved Application State/com.green-go.control.savedState",
  ]
end
