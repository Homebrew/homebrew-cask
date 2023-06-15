cask "enclave" do
  version "2023.6.6"
  sha256 "4a270aefa5c4c3d1bab385a71efd7b0df1a1c66a1b0bd7d7275ec639a3b918bf"

  url "https://release.enclave.io/enclave_osx-installer-x64-stable-#{version}.pkg"
  name "Enclave"
  desc "Safely build private networks without configs, firewalls or access control lists"
  homepage "https://enclave.io/"

  livecheck do
    url "https://install.enclave.io/latest/osx-homebrew-version.txt"
    regex(/(\d+(?:\.\d+)+(?:\.hotfix\d+)?)/i)
  end

  pkg "enclave_osx-installer-x64-stable-#{version}.pkg"
  binary "/Applications/enclave/enclave"

  uninstall launchctl: "com.enclave",
            pkgutil:   "com.enclave.*"

  zap delete: [
    "/etc/enclave",
    "/var/log/enclave",
  ]
end
