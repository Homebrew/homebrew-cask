cask "phew" do
  version "1.0"
  sha256 "f4d6c78f98926b5e84bdbba68e06f5646545af15623807df26a7715e3397203d"

  url "https://sveinbjorn.org/files/software/phew/Phew-#{version}.zip"
  name "Phew"
  desc "FLIF image viewer and QuickLook plugin"
  homepage "https://sveinbjorn.org/phew"

  livecheck do
    url "https://sveinbjorn.org/files/appcasts/PhewAppcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true

  app "Phew.app"
  qlplugin "#{appdir}/Phew.app/Contents/Resources/FLIFImages.qlgenerator"

  uninstall delete: "#{appdir}/Phew.app"
end
