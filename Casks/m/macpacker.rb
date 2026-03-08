cask "macpacker" do
  version "0.14.1"
  sha256 "78e8664bfa530062c2cf26cc4891f37d73929ff89d2a2bdf5f36140d21d074cc"

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
  depends_on macos: ">= :ventura"

  app "MacPacker.app"

  uninstall quit: "com.sarensx.MacPacker"

  zap trash: [
    "~/Library/Application Scripts/com.sarensx.MacPacker*",
    "~/Library/Application Scripts/group.app.macpacker",
    "~/Library/Containers/com.sarensx.MacPacker*",
    "~/Library/Group Containers/group.app.macpacker",
  ]
end
