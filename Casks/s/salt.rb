cask "salt" do
  arch arm: "arm64", intel: "x86_64"

  version "3007.7"
  sha256 arm:   "caaeac93c0e2ddc42753589e716cdccfce5813daa8e759863843a90d5dab6587",
         intel: "ad61aaa4ddee1df532661f95cd0b394b21e133082a5d42bd392200dcccd5f390"

  url "https://packages.broadcom.com/artifactory/saltproject-generic/macos/#{version}/salt-#{version}-py3-#{arch}.pkg",
      verified: "packages.broadcom.com/artifactory/saltproject-generic/"
  name "Salt"
  desc "Automation and infrastructure management engine"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/macos.html"
    regex(/salt[._-]v?(\d+(?:\.\d+)+)-py3-#{arch}\.pkg/i)
  end

  pkg "salt-#{version}-py3-#{arch}.pkg"

  uninstall launchctl: [
              "com.saltstack.salt.api",
              "com.saltstack.salt.master",
              "com.saltstack.salt.minion",
              "com.saltstack.salt.syndic",
            ],
            pkgutil:   "com.saltstack.salt"

  zap trash: "/etc/salt"
end
