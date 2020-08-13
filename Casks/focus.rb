cask "focus" do
  version "1.11"
  sha256 "4be805d35fc57d24debc0e4d0fd36b74d08c2f93d26c9daea7c8ac45019cb345"

  url "https://heyfocus.com/uploads/Focus-v#{version}.zip"
  appcast "https://macupdater.net/cgi-bin/check_urls/check_url_redirect.cgi?url=https://heyfocus.com/focus.zip"
  name "Focus"
  homepage "https://heyfocus.com/"

  app "Focus.app"

  uninstall quit: "BradJasper.focus"

  zap trash: [
    "~/Library/Caches/BradJasper.focus/",
    "~/Library/Application Support/Focus/",
    "~/Library/Preferences/BradJasper.focus.plist",
  ]
end
