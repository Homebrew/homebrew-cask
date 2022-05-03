cask "sapmachine-jdk" do
  arch = Hardware::CPU.intel? ? "x64" : "aarch64"

  version "17.0.3.0.1"

  if Hardware::CPU.intel?
    sha256 "665932b8f9f7fccef703705f9b7c962730d9a04d2481c4da19ccc11a28f23492"
  else
    sha256 "ef1caa159f4c15e54dbf30fd6cd6665cc455f93c4ab7b40e019923103428cb69"
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
