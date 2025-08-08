cask "bloom" do
  version "1.3.7"
  sha256 "a4686b81310704d59081bf03699057ebeb0e2e3d830aa918d9057742e195adf0"

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
