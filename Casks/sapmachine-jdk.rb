cask "sapmachine-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "18.0.2.1"
  sha256 arm:   "1d43d404987b67fb5fa9667a4e22d01a48a79ed8a9fda52d1570414f81ba775b",
         intel: "16125f779bbb631d62eaea6e55fda405344b1ff4fc17e2b1edcc946d3f8abd1b"

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_macos-#{arch}_bin.dmg",
      verified: "github.com/SAP/SapMachine/"
  name "SapMachine OpenJDK Development Kit"
  desc "OpenJDK distribution from SAP"
  homepage "https://sapmachine.io/"

  # The version information on the homepage is rendered client-side from the
  # following JSON file, so we have to check it instead.
  livecheck do
    url "https://sap.github.io/SapMachine/assets/data/sapmachine_releases.json"
    regex(/["']tag["']:\s*["']sapmachine[._-]v?(\d+(?:\.\d+)*)["']/i)
  end

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk-#{version}.jdk"
end
