cask "displaperture" do
  version "2.2,1055"
  sha256 :no_check

  url "https://manytricks.com/download/displaperture"
  name "Displaperture"
  desc "Rounds your display corners"
  homepage "https://manytricks.com/displaperture/"

  livecheck do
    url "https://manytricks.com/displaperture/appcast/"
    strategy :sparkle
  end

  app "Displaperture.app"

  uninstall quit: "com.manytricks.Displaperture"

  zap trash: [
    "~/Library/Caches/com.manytricks.Displaperture",
    "~/Library/Containers/com.manytricks.Displaperture",
    "~/Library/Preferences/com.manytricks.Displaperture.plist",
  ]
end
