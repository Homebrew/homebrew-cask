cask "green-go-control" do
  version "5.2.2"
  sha256 "1ed3b3c8b1daa73a12f7f7b7e2197cae188bb659832eeb89321cb61e76b1e416"

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
