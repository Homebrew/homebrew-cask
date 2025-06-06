cask "green-go-control" do
  version "5.1.3"
  sha256 "51c46984a3f9e00b5eb61bbb6af9b53e8c0118dfd08afef66d6b2c60a42fbc89"

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
