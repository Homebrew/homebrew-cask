cask "bloom" do
  version "1.4.9"
  sha256 "dd39d1dfedc04319da589b5291faedf2d636b8ce9d41ab7236f3cd4d399d1bbe"

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
