cask "brewy" do
  version "0.5.0"
  sha256 "e0963459f721f88fdb2b94fd4c38a51403c207d28aefbffb1686da5549117c37"

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
    "~/Library/Application Scripts/com.linnane.Brewy",
    "~/Library/Application Support/Brewy",
    "~/Library/Containers/com.linnane.Brewy",
    "~/Library/HTTPStorages/io.linnane.brewy",
    "~/Library/Preferences/Brewy.plist",
    "~/Library/Preferences/io.linnane.Brewy.plist",
  ]
end
