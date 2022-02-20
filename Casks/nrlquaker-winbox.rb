cask "nrlquaker-winbox" do
  version "3.34.0"
  sha256 "5d2bba125a77db1767b917a3c7772249905f28a2a55db468c708e50f9bfed9ed"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
