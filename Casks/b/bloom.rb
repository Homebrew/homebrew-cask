cask "bloom" do
  version "1.5.14"
  sha256 "98af312fc641a7f108e888ddfb27701eddc5c812e77c85728bb23fe503b4734a"

  url "https://bloomapp.club/downloads/bloom/Bloom-v#{version}.dmg",
      referer: "https://bloomapp.club"
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
