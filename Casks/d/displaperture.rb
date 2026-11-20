cask "displaperture" do
  version "3.0"
  sha256 "aae036ad827760d949791989125fd1c7cbe1dbdc30e5726836aa63ccde78aadc"

  url "https://manytricks.com/download/_do_not_hotlink_/displaperture#{version.no_dots.ljust(3, "0")}.dmg"
  name "Displaperture"
  desc "Rounds your display corners"
  homepage "https://manytricks.com/displaperture/"

  livecheck do
    url "https://manytricks.com/displaperture/appcast/"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on :macos

  app "Displaperture.app"

  uninstall quit: "com.manytricks.Displaperture"

  zap trash: [
    "~/Library/Caches/com.manytricks.Displaperture",
    "~/Library/Containers/com.manytricks.Displaperture",
    "~/Library/HTTPStorages/com.manytricks.Displaperture",
    "~/Library/Preferences/com.manytricks.Displaperture.plist",
  ]
end
