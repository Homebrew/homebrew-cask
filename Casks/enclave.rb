cask "enclave" do
  version "2021.05.10"
  sha256 "c3501babb5aa57d9bb0611c6a5ef8e9c53c5afdc7c0dfe3d870bb00d2c73d543"

  url "https://release.enclave.io/enclave_osx-installer-x64-unstable-#{version}.pkg"
  name "Enclave"
  desc "Safely build private networks without configs, firewalls or access control lists"
  homepage "https://enclave.io/"

  livecheck do
    url "https://install.enclave.io/latest/osx-homebrew-version.txt"
    strategy :page_match
    regex(/^(.*)$/)
  end

  depends_on macos: ">= :yosemite"

  pkg "enclave_osx-installer-x64-unstable-#{version}.pkg"
  binary "/Applications/enclave/enclave"

  uninstall launchctl: "com.enclave",
            pkgutil:   "com.enclave.*"

  zap delete: [
    "/etc/enclave",
    "/var/log/enclave",
  ]
end
