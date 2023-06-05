cask "enclave" do
  version "2023.6.5"
  sha256 "fe2aaea26c862389b635a1f9aaa22ff8eeff56d6e17a962909effb5e69e236a8"

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
