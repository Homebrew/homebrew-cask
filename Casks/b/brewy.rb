cask "brewy" do
  version "0.24.0"
  sha256 "675041e0d1305c9635985256be115ddda1f44c1deab34de4ef4d41a54baea138"

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
