cask "sapmachine-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18.0.1.1"

  if Hardware::CPU.intel?
    sha256 "e26be90ec536d7f1f24a048ab289ec36829cc6d6fc67d113423b051bcbd76ee7"
  else
    sha256 "0b0fd7590ae9a7ef1a9c50474d711bb994ce2fe1172c94088f0541b9cf941e57"
  end

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
