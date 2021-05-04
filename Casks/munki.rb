cask "munki" do
  version "5.4.0.4348"
  sha256 "312faccca992e1bb806a647e4c4e18929cea07d1a939ce5cc99dddb3dac24660"

  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg",
      verified: "github.com/munki/munki/"
  name "Munki"
  desc "Software installation manager"
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
