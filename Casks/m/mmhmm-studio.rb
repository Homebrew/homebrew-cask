cask "mmhmm-studio" do
  on_monterey :or_older do
    version "2.5.2,1687464000"
    sha256 "49ddb6c2b02050386f7786a619a5d2e87eea130f5b68fcd03ebb2ac4dfb8986f"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura :or_newer do
    version "2.6.3,1703105000"
    sha256 "b009b9ca5a936500e0d0c6954e8d59d8929ee1c3d0522c044a8bb9b830e517f5"

    # This appcast sometimes uses a newer pubDate for an older version, so we
    # have to ignore the default `Sparkle` strategy sorting (which involves the
    # pubDate) and simply work with the version numbers.
    livecheck do
      url "https://updates.mmhmm.app/mac/production/sparkle.xml"
      strategy :sparkle do |items|
        items.map(&:nice_version)
      end
    end
  end

  url "https://updates.mmhmm.app/mac/production/mmhmmStudio_#{version.csv.first}.zip"
  name "mmhmm Studio"
  desc "Virtual video presentation software"
  homepage "https://www.mmhmm.app/product"

  auto_updates true
  depends_on macos: ">= :big_sur"

  app "mmhmm Studio.app"

  uninstall launchctl: "app.mmhmm.Camera.Assistant",
            quit:      "app.mmhmm.app",
            pkgutil:   "app.mmhmm.app",
            delete:    [
              "/Library/Audio/Plug-Ins/HAL/mmhmmAudio.driver",
              "/Library/CoreMediaIO/Plug-Ins/DAL/mmhmmCamera.plugin",
            ]

  zap trash: [
    "~/Library/Preferences/app.mmhmm.app.plist",
    "~/Library/Saved Application State/app.mmhmm.app.savedState",
  ]
end
