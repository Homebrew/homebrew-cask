cask "munki" do
  version "6.6.0.4690"
  sha256 "5693054947a6f6e696ab6906ae48257802b1348aa2b6a78bd75b6573e37c4483"

  url "https://github.com/munki/munki/releases/download/v#{version.major_minor_patch}/munkitools-#{version}.pkg",
      verified: "github.com/munki/munki/"
  name "Munki"
  desc "Software installation manager"
  homepage "https://www.munki.org/munki/"

  livecheck do
    url :url
    regex(/^munkitools[._-]v?(\d+(?:\.\d+)+)\.pkg$/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        match[1]
      end
    end
  end

  pkg "munkitools-#{version}.pkg"

  uninstall launchctl: [
              "com.googlecode.munki.app_usage_monitor",
              "com.googlecode.munki.appusaged",
              "com.googlecode.munki.authrestartd",
              "com.googlecode.munki.logouthelper",
              "com.googlecode.munki.ManagedSoftwareCenter",
              "com.googlecode.munki.managedsoftwareupdate-check",
              "com.googlecode.munki.managedsoftwareupdate-install",
              "com.googlecode.munki.managedsoftwareupdate-manualcheck",
              "com.googlecode.munki.munki-notifier",
            ],
            pkgutil:   "com.googlecode.munki.*",
            delete:    "/usr/local/munki"

  zap trash: [
    "/Library/LaunchDaemons/com.googlecode.munki.appusaged.plist",
    "/Library/LaunchDaemons/com.googlecode.munki.authrestartd.plist",
    "/Library/LaunchDaemons/com.googlecode.munki.logouthelper.plist",
    "/Library/LaunchDaemons/com.googlecode.munki.managedsoftwareupdate-check.plist",
    "/Library/LaunchDaemons/com.googlecode.munki.managedsoftwareupdate-install.plist",
    "/Library/LaunchDaemons/com.googlecode.munki.managedsoftwareupdate-manualcheck.plist",
  ]
end
