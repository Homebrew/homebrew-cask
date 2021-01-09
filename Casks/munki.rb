cask "munki" do
  version "5.2.1.4260"
  sha256 "920fa04740f008809a41f9022688f600610ca98a4a2b8dc66d3c35094635ee8d"

  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg",
      verified: "github.com/munki/munki/"
  name "Munki"
  homepage "https://www.munki.org/munki/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/munkitools-(\d+(?:\.\d+)*)\.pkg}i)
  end

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   "com.googlecode.munki.*",
            launchctl: [
              "com.googlecode.munki.app_usage_monitor",
              "com.googlecode.munki.appusaged",
            ]
end
