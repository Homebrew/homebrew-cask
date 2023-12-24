cask "glimmerblocker" do
  version "1.6.6"
  sha256 "d207aa133986b8f82687fd80eda82ff6c03f71c9231294286a04df1a05b5deb0"

  url "https://glimmerblocker.org/downloads/GlimmerBlocker-#{version}.dmg"
  name "GlimmerBlocker"
  desc "HTTP based ad blocker"
  homepage "https://glimmerblocker.org/"

  deprecate! date: "2023-12-17", because: :discontinued

  pkg "GlimmerBlocker.pkg"

  uninstall launchctl: [
              "org.glimmerblocker.installer",
              "org.glimmerblocker.proxy",
              "org.glimmerblocker.updater",
            ],
            pkgutil:   "org.glimmerblocker.pkg",
            delete:    "/Library/PreferencePanes/GlimmerBlocker.prefPane"

  zap trash: [
    "/Library/GlimmerBlocker",
    "/Library/Logs/GlimmerBlocker",
  ]

  caveats do
    <<~EOS
      You must deactivate GlimmerBlocker from the installed preference
      pane before uninstalling. See https://glimmerblocker.org/wiki/Uninstall.
    EOS
  end
end
