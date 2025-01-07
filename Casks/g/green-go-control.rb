cask "green-go-control" do
  version "5.1.0"
  sha256 "5e654801997ae166c0218b4e1fd0cafe011b4361714904dc2fcb7b56698dd72e"

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

  caveats do
    requires_rosetta
  end
end
