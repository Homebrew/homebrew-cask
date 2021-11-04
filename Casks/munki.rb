cask "munki" do
  version "5.6.1.4394"
  sha256 "30651b729ba9212453b32778bc9f4651248d9d77b1d93481c99fc92bd641e512"

  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg",
      verified: "github.com/munki/munki/"
  name "Munki"
  desc "Software installation manager"
  homepage "https://www.munki.org/munki/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/munkitools[._-]v?(\d+(?:\.\d+)+)\.pkg}i)
  end

  pkg "munkitools-#{version}.pkg"

  uninstall pkgutil:   "com.googlecode.munki.*",
            launchctl: [
              "com.googlecode.munki.app_usage_monitor",
              "com.googlecode.munki.appusaged",
            ]
end
