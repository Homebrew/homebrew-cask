cask "sapmachine-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "19.0.2"
  sha256 arm:   "f354ef6ce50590330973c2b2ae53918ba6471bb1c1e89862dea4d18a9c7cfa9e",
         intel: "916d060f0af16fcffd20b1520028cb9383bdb8c8e231fd0e1f172eaffbae6071"

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
