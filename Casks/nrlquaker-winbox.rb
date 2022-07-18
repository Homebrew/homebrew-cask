cask "nrlquaker-winbox" do
  version "3.36.1"
  sha256 "230096c81ef43973319cfca00452017835b86ab1b4b9bebbe57dbd0625e489c9"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
