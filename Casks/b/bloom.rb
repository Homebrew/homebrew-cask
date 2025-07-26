cask "bloom" do
  version "1.3.4"
  sha256 "e6eeb93081ad854281029b014078ee461e1cc31d765427a6c12a973561c3c020"

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
