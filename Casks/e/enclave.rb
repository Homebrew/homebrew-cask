cask "enclave" do
  version "2025.5.23"
  sha256 "b07c22435f0ff678dc0f7d35256787ff42daf3ad6dc33db2b3fae646b1e0722f"

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

  caveats do
    requires_rosetta
  end
end
