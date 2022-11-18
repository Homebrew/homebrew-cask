cask "enclave" do
  version "2022.11.18"
  sha256 "19055a1cb343f86a7872a786d2b0a21b8f57ce61f45f003afb2657154b340307"

  url "https://release.enclave.io/enclave_osx-installer-x64-stable-#{version}.pkg"
  name "Enclave"
  desc "Safely build private networks without configs, firewalls or access control lists"
  homepage "https://enclave.io/"

  livecheck do
    url "https://install.enclave.io/latest/osx-homebrew-version.txt"
    regex(/(\d+(?:\.\d+)*)/i)
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
