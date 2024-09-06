cask "displaperture" do
  version "2.3"
  sha256 "abc53579993abb843cf0634ecf441a7a7277535ac5a440c6f9c4558c2a9aebf3"

  url "https://manytricks.com/download/_do_not_hotlink_/displaperture#{version.no_dots.ljust(3, "0")}.dmg"
  name "Displaperture"
  desc "Rounds your display corners"
  homepage "https://manytricks.com/displaperture/"

  livecheck do
    url "https://manytricks.com/displaperture/appcast/"
    strategy :sparkle, &:short_version
  end

  app "Displaperture.app"

  uninstall quit: "com.manytricks.Displaperture"

  zap trash: [
    "~/Library/Caches/com.manytricks.Displaperture",
    "~/Library/Containers/com.manytricks.Displaperture",
    "~/Library/HTTPStorages/com.manytricks.Displaperture",
    "~/Library/Preferences/com.manytricks.Displaperture.plist",
  ]
end
