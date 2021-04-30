cask "munki" do
  version "5.3.0.4335"
  sha256 "357d202a0732e662f6155c4e8ebdef468cefbfb52d122f3964cf1ae84fac2537"

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
