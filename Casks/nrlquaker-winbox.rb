cask "nrlquaker-winbox" do
  version "3.28.1"
  sha256 "fbc79b7a9f986232eb0d81f9b70b9a92a491cb2f8f92b30e77c560775dec6046"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
