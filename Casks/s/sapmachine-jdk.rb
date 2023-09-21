cask "sapmachine-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "21"
  sha256 arm:   "12f0fa4af1c1f97845542f511db485cbc838d3ab5d87e88591cb58a1f5e58f7f",
         intel: "326250808c81212e31707605d98939aaec47ff1b8e95f40c606100f20cb5eac4"

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

  zap trash: "~/Library/Saved Application State/com.sap.openjdk.jconsole.savedState"
end
