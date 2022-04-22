cask "sapmachine-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "18.0.1"

  if Hardware::CPU.intel?
    sha256 "e295a69941ac9345794503b47414ff2c1c8534cb66e75d00721939c63f27735a"
  else
    sha256 "1ac9161d77d0548f61e2b90c7f2b3b6eaf9a7da327c52b4dc79fdffd28976c98"
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
