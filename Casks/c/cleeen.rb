cask "cleeen" do
  version "0.12.2"
  sha256 "fe945aec20f155b82d5dcfb4ce413045defe0a3e24631380924b7cd651f5178d"

  url "https://dl.cleeen.fehey.com/Cleeen-#{version}.dmg"
  name "Cleeen"
  desc "Free, native disk cleaner"
  homepage "https://cleeen.fehey.com/"

  livecheck do
    url "https://dl.cleeen.fehey.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Cleeen.app"

  uninstall quit: "dev.zayn.Cleeen"

  zap trash: "~/Library/Preferences/dev.zayn.Cleeen.plist"
end
