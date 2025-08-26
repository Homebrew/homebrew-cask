cask "bloom" do
  version "1.4.1"
  sha256 "b0a935cbbebd811b8328d7a5e9e3905b7e991f3362947fa361b474cf2928f3b2"

  url "https://bloomapp.club/downloads/bloom/Bloom%20-%20v#{version}.zip"
  name "Bloom"
  desc "File manager"
  homepage "https://bloomapp.club/"

  livecheck do
    url "https://bloomapp.club/downloads/bloom/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Bloom.app"

  zap trash: [
    "~/Library/Containers/com.asiafu.Bloom",
    "~/Library/Preferences/com.asiafu.Bloom.plist",
  ]
end
