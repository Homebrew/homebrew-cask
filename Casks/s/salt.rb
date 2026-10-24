cask "salt" do
  arch arm: "arm64", intel: "x86_64"

  version "3008.4"
  sha256 arm:   "bb2557a21b2b1dbfb17f2be6acc10e8b50d29b73b57a2906868f7768854c1085",
         intel: "d2a3643c44d66dd2a0f50392cc0e071d40bf067d300121cabbb2f500ddb4afb1"

  url "https://packages.broadcom.com/artifactory/saltproject-generic/macos/#{version}/salt-#{version}-py3-#{arch}.pkg"
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
