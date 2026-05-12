cask "salt" do
  arch arm: "arm64", intel: "x86_64"

  version "3007.14"
  sha256 arm:   "2655563c1848f1272d70024fa28ffe40a30030a0751472d55afb70358124fbbb",
         intel: "e51cde7d0c25edf8e55680996d67879b679512495c6fb385cca4093623cc984c"

  url "https://packages.broadcom.com/artifactory/saltproject-generic/macos/#{version}/salt-#{version}-py3-#{arch}.pkg",
      verified: "packages.broadcom.com/artifactory/saltproject-generic/"
  name "Salt"
  desc "Automation and infrastructure management engine"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://docs.saltproject.io/salt/install-guide/en/latest/topics/install-by-operating-system/macos.html"
    regex(/salt[._-]v?(\d+(?:\.\d+)+)-py3-#{arch}\.pkg/i)
  end

  depends_on :macos

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
