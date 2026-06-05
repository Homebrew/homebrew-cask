cask "macpacker" do
  version "0.15.1"
  sha256 "bb942d37433b6131f131fdf2c41f8eb560fe7866154a33dab30d0522dfa843ad"

  url "https://macpacker-releases.s3.amazonaws.com/MacPacker_v#{version}.zip",
      verified: "macpacker-releases.s3.amazonaws.com/"
  name "MacPacker"
  desc "Archive manager"
  homepage "https://macpacker.app/"

  livecheck do
    url "https://macpacker-releases.s3.amazonaws.com/appcast.xml"
    strategy :sparkle do |items|
      items.find { |item| item.channel.nil? }&.short_version
    end
  end

  auto_updates true
  depends_on macos: :sonoma

  app "MacPacker.app"

  uninstall quit: "com.sarensx.MacPacker"

  zap trash: [
    "~/Library/Application Scripts/com.sarensx.MacPacker*",
    "~/Library/Application Scripts/group.app.macpacker",
    "~/Library/Containers/com.sarensx.MacPacker*",
    "~/Library/Group Containers/group.app.macpacker",
  ]
end
