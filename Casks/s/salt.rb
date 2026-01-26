cask "salt" do
  arch arm: "arm64", intel: "x86_64"

  version "3007.11"
  sha256 arm:   "9413ccfcce69328aee3281a32a1aba8e8f6e99aa31721f34594a70932c54ab41",
         intel: "4aaaab848074480d1a11c9237c22dae8e9079827e20cd77ddff8bfc39ec7c5ba"

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
