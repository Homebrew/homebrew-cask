cask "mmhmm-studio" do
  version "2.5.0,1682100000"
  sha256 "9123c520c7be7fa1cd0ea877a6cb1218c55432b07729e3704153392b74090345"

  url "https://updates.mmhmm.app/mac/production/mmhmmStudio_#{version.csv.first}.zip"
  name "mmhmm Studio"
  desc "Virtual video presentation software"
  homepage "https://www.mmhmm.app/product"

  # This appcast sometimes uses a newer pubDate for an older version, so we
  # have to ignore the default `Sparkle` strategy sorting (which involves the
  # pubDate) and simply work with the version numbers.
  livecheck do
    url "https://updates.mmhmm.app/mac/production/sparkle.xml"
    strategy :sparkle do |items|
      items.map(&:nice_version)
    end
  end

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "mmhmm Studio.app"

  uninstall pkgutil:   "app.mmhmm.app",
            quit:      "app.mmhmm.app",
            delete:    [
              "/Library/Audio/Plug-Ins/HAL/mmhmmAudio.driver",
              "/Library/CoreMediaIO/Plug-Ins/DAL/mmhmmCamera.plugin",
            ],
            launchctl: "app.mmhmm.Camera.Assistant"

  zap trash: "~/Library/Preferences/app.mmhmm.app.plist"
end
