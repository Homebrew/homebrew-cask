cask "macpacker" do
  version "0.10"
  sha256 "4f89a00a01cc177b78123f9d7efa451ccc02a0c7faca907b75198a414b23d7f0"

  url "https://macpacker-releases.s3.amazonaws.com/MacPacker_v#{version}.zip",
      verified: "macpacker-releases.s3.amazonaws.com/"
  name "MacPacker"
  desc "Archive manager"
  homepage "https://macpacker.app/"

  livecheck do
    url "https://macpacker-releases.s3.amazonaws.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "MacPacker.app"

  uninstall quit: "com.sarensx.MacPacker"

  zap trash: [
    "~/Library/Application Scripts/com.sarensx.MacPacker*",
    "~/Library/Application Scripts/group.app.macpacker",
    "~/Library/Containers/com.sarensx.MacPacker*",
    "~/Library/Group Containers/group.app.macpacker",
  ]
end
