cask "itsytv" do
  version "1.9.0"
  sha256 "f8dc70ac7322bfbbfbb37e7fb351e36d27e0229b2160668a3d95792c1ae24931"

  url "https://github.com/nickustinov/itsytv-macos/releases/download/v#{version}/Itsytv-#{version}.dmg"
  name "Itsytv"
  desc "Menu bar app for controlling your Apple TV"
  homepage "https://itsytv.app/"

  depends_on macos: :sonoma

  app "Itsytv.app"

  zap trash: [
    "~/Library/Application Scripts/com.itsytv.app",
    "~/Library/Containers/com.itsytv.app",
  ]
end
