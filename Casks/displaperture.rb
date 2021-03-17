cask "displaperture" do
  version "2.1,1052"
  sha256 :no_check

  url "https://manytricks.com/download/displaperture"
  appcast "https://manytricks.com/displaperture/appcast/?version=#{version.major}"
  name "Displaperture"
  desc "Rounds your display corners"
  homepage "https://manytricks.com/displaperture/"

  app "Displaperture.app"

  uninstall quit: "com.manytricks.Displaperture"

  zap trash: [
    "~/Library/Caches/com.manytricks.Displaperture",
    "~/Library/Preferences/com.manytricks.Displaperture.plist",
  ]
end
