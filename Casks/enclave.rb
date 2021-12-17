cask "enclave" do
  version "2021.12.06"
  sha256 "2c242295d14c6cfa29ea74f342f4a6bac391c1896d6db0c6cd9fec7d39d871c2"

  url "https://release.enclave.io/enclave_osx-installer-x64-stable-#{version}.pkg"
  name "Enclave"
  desc "Safely build private networks without configs, firewalls or access control lists"
  homepage "https://enclave.io/"

  livecheck do
    url "https://install.enclave.io/latest/osx-homebrew-version.txt"
    regex(/(\d+(?:\.\d+)*)/)
  end

  depends_on macos: ">= :yosemite"

  pkg "enclave_osx-installer-x64-stable-#{version}.pkg"
  binary "/Applications/enclave/enclave"

  uninstall launchctl: "com.enclave",
            pkgutil:   "com.enclave.*"

  zap delete: [
    "/etc/enclave",
    "/var/log/enclave",
  ]
end
