cask "brewy" do
  version "0.9.1"
  sha256 "f12e85d5226331b9c116c5c6624a1ef7f6d7f2c6faf998a0b6762b8f91e70f88"

  url "https://github.com/p-linnane/Brewy/releases/download/#{version}/Brewy-#{version}.zip"
  name "Brewy"
  desc "Simple Homebrew GUI"
  homepage "https://github.com/p-linnane/Brewy"

  livecheck do
    url "https://raw.githubusercontent.com/p-linnane/Brewy/appcast/appcast.xml"
    strategy :sparkle, &:short_version
  end

  no_autobump! because: :bumped_by_upstream

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: ">= :sequoia"

  app "Brewy.app"

  zap trash: [
    "~/Library/Application Scripts/io.linnane.Brewy",
    "~/Library/Application Support/Brewy",
    "~/Library/Caches/io.linnane.brewy",
    "~/Library/Containers/io.linnane.Brewy",
    "~/Library/HTTPStorages/io.linnane.brewy",
    "~/Library/Preferences/Brewy.plist",
    "~/Library/Preferences/io.linnane.brewy.plist",
    "~/Library/WebKit/io.linnane.brewy",
  ]
end
