cask "nrlquaker-winbox" do
  version "3.36.0"
  sha256 "9f0a84f3181c9e918e5a84a7b2915261676b250277abd959adaba0275a2a82cb"

  url "https://github.com/nrlquaker/winbox-mac/releases/download/v#{version}/Winbox-mac-#{version}.zip"
  name "Winbox-mac"
  desc "MikroTik Winbox"
  homepage "https://github.com/nrlquaker/winbox-mac/"

  app "Winbox-mac.app"

  zap trash: "~/Library/Application Support/com.mikrotik.winbox"
end
