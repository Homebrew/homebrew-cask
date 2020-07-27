cask "munki" do
  version "5.0.1.4059"
  sha256 "2f638ee7aebdee58ddc721c8203a12e16f6bdc49e94c31514d581c5961c78c5e"

  # github.com/munki/munki/ was verified as official when first introduced to the cask
  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg"
  appcast "https://github.com/munki/munki/releases.atom",
          must_contain: version.major_minor_patch
  name "Munki"
  homepage "https://www.munki.org/munki/"

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   "com.googlecode.munki.*",
            launchctl: [
              "com.googlecode.munki.app_usage_monitor",
              "com.googlecode.munki.appusaged",
            ]
end
