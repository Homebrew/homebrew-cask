cask "mmhmm-studio" do
  version "2.4.0,1666031000"
  sha256 "ff09794c189e0f1964c5f3cb49dd44a41f60dc722f1ab2868bf8040fe86028ee"

  url "https://updates.mmhmm.app/mac/production/mmhmm_#{version.csv.first}.zip"
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
