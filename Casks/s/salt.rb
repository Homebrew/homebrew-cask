cask "salt" do
  arch arm: "arm64", intel: "x86_64"

  version "3006.5"
  sha256 arm:   "bac43fcb5ca04679245e1b6510cb060f282c6f1bb15280396214ca671c74ce65",
         intel: "90c55ae9836d7f3f1e2c6cb930cff60b334393c87482f26b32121c04db2ad5ea"

  url "https://repo.saltproject.io/salt/py3/macos/minor/#{version}/salt-#{version}-py3-#{arch}.pkg"
  name "Salt"
  desc "Automation and infrastructure management engine"
  homepage "https://saltproject.io/"

  livecheck do
    url "https://repo.saltproject.io/salt/py3/macos/latest"
    regex(/salt[._-]v?(\d+(?:\.\d+)+)-py3-#{arch}\.pkg/)
  end

  pkg "salt-#{version}-py3-#{arch}.pkg"

  uninstall launchctl: [
              "com.saltstack.salt.api",
              "com.saltstack.salt.master",
              "com.saltstack.salt.minion",
              "com.saltstack.salt.syndic",
            ],
            pkgutil:   [
              "com.saltstack.salt",
            ]

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
