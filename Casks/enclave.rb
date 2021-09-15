cask "enclave" do
  version "2021.08.25"
  sha256 "7259889556825f277fc62563cdfa817765fa300d8acd9d0fef1d5b31501c015d"

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
