cask "nrlquaker-winbox" do
  version "3.30.0"
  sha256 "047014c7bea878e2f78710f869f37d6fb360dab550d7f2018e52ccaf86d2ba05"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
