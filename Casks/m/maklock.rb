cask "maklock" do
  version "1.0.0"
  sha256 "1f6126b739049f862ada24b1867b05200cd015df422f9c4fc17feabaf104d7d1"

  url "https://github.com/dutkiewiczmaciej/MakLock/releases/download/v#{version}/MakLock-#{version}.dmg"
  name "MakLock"
  desc "Lock macOS apps with Touch ID, Apple Watch, or password"
  homepage "https://github.com/dutkiewiczmaciej/MakLock"

  livecheck do
    url "https://dutkiewiczmaciej.github.io/maklock/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "MakLock.app"

  zap trash: [
    "~/Library/Preferences/com.makmak.MakLock.plist",
    "~/Library/Caches/com.makmak.MakLock",
    "~/Library/Application Support/com.makmak.MakLock",
    "~/Library/HTTPStorages/com.makmak.MakLock",
  ]
end
