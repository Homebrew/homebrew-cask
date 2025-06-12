cask "salt" do
  arch arm: "arm64", intel: "x86_64"

  version "3007.3"
  sha256 arm:   "5d65cd82c8b717c4b1f4523a7ad7c0bfe22bd995cb04d438c70082c3025d29fa",
         intel: "39ef12e1f20255f2f585b4a3c12c398865a7237eb460c52be92c9f76e9e71f31"

  url "https://packages.broadcom.com/artifactory/saltproject-generic/macos/#{version}/salt-#{version}-py3-#{arch}.pkg",
      verified: "packages.broadcom.com/artifactory/saltproject-generic/"
  name "Salt"
  desc "Automation and infrastructure management engine"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/macos.html"
    regex(/salt[._-]v?(\d+(?:\.\d+)+)-py3-#{arch}\.pkg/i)
  end

  no_autobump! because: :requires_manual_review

  pkg "salt-#{version}-py3-#{arch}.pkg"

  uninstall launchctl: [
              "com.saltstack.salt.api",
              "com.saltstack.salt.master",
              "com.saltstack.salt.minion",
              "com.saltstack.salt.syndic",
            ],
            pkgutil:   "com.saltstack.salt"

  zap trash: "/etc/salt"

  def caveats
    <<~CAVEATS
      Included services:

      sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.api.plist
      sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.master.plist
      sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.minion.plist
      sudo launchctl load -w /Library/LaunchDaemons/com.saltstack.salt.syndic.plist
    CAVEATS
  end
end
