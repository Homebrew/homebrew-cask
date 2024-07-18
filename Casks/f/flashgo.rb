cask "flashgo" do
  version "1.4.0,10400"
  sha256 "5c3f333c518c8c9c762273c7a89d1ee6745be215abd04f9ed5296fb93fd704ea"

  url "https://pkgs.flashgo.net/client/#{version.csv.first}/FlashGo_v#{version.tr(",", "+")}.dmg"
  name "FlashGo for Mac client"
  desc "Modern high-performance network proxy tool"
  homepage "https://flashgo.net/"

  livecheck do
    url "https://pkgs.flashgo.net/client/appcast.xml"
    strategy :sparkle do |item|
      version = item.bundle_version.version&.split("+")
      next if version.blank?

      "#{version&.first},#{version.second}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "FlashGo.app"

  uninstall quit:   "app.flashgo.net",
            delete: "/Applications/FlashGo.app"

  zap trash: [
    "~/Library/Containers/app.flashgo.net",
    "~/Library/Group Containers/$(TeamIdentifierPrefix).app.flashgo.net",
  ]
end
