cask "thor" do
  version "1.5.18"
  sha256 "f705e6a2cdd464f90565436a7276221fabdaf0fc1202792b611f918d85931fd6"

  url "https://github.com/gbammc/Thor/releases/download/#{version}/Thor_#{version}.zip"
  name "Thor"
  desc "Utility to switch between applications"
  homepage "https://github.com/gbammc/Thor/"

  livecheck do
    url "https://github.com/gbammc/Thor/raw/master/Releases/appcast.xml"
    strategy :sparkle do |items|
      items.map(&:short_version)
    end
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Thor.app"

  uninstall quit: "me.alvinzhu.Thor"

  zap trash: [
    "~/Library/Application Scripts/me.alvinzhu.Thor",
    "~/Library/Containers/me.alvinzhu.Thor",
  ]
end
