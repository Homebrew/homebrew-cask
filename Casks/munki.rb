cask "munki" do
  version "5.2.2.4287"
  sha256 "b03611a201134b1e2fc3c630eed0e1ae2472579ee4a30ede75ffef18ec7e879c"

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
