cask "mmhmm-studio" do
  version "2.4.2,1676520000"
  sha256 "6fb094e0f5f454d564e79d0abb17317cce264d50cf56346a4772fa1b97a09433"

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
            launchctl: "app.mmhmm.Camera.Assistant"
end
