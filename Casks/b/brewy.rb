cask "brewy" do
  version "0.26.2"
  sha256 "51e37c887660d0129588d6317fe97aede53871130692fcc8a819e761716390ab"

  url "https://github.com/starhaven-io/Brewy/releases/download/#{version}/Brewy-#{version}.zip"
  name "Brewy"
  desc "Simple Homebrew GUI"
  homepage "https://github.com/starhaven-io/Brewy"

  livecheck do
    url "https://raw.githubusercontent.com/starhaven-io/Brewy/appcast/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sequoia

  app "Brewy.app"

  uninstall quit: "io.linnane.brewy"

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
