cask "salt" do
  arch arm: "arm64", intel: "x86_64"

  version "3008.3"
  sha256 arm:   "906c3faebfcbf47a71db9b4472b956b858d96276e2b01e2cab763a5caa68b695",
         intel: "61c1a0af8ae7391d7c3be7f0dc158ffef75cd54be1bf9394ec567ec57ffe03d0"

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
