cask "sapmachine-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.2"
  sha256 arm:   "d0119abdd5d625fa7d353fb7bf80faf791ca74569fece4db3db84685817477fb",
         intel: "5e5568e5080ca531150e855780e0552cb68fd45476dab4ce1ef1c78d28c2cda0"

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_macos-#{arch}_bin.dmg",
      verified: "github.com/SAP/SapMachine/"
  name "SapMachine OpenJDK Development Kit"
  desc "OpenJDK distribution from SAP"
  homepage "https://sapmachine.io/"

  # The version information on the homepage is rendered client-side from the
  # following JSON file, so we have to check it instead.
  livecheck do
    url "https://sap.github.io/SapMachine/assets/data/sapmachine-releases-latest.json"
    regex(/["']tag["']:\s*["']sapmachine[._-]v?(\d+(?:\.\d+)*)["']/i)
  end

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk.jdk"

  zap trash: "~/Library/Saved Application State/com.sap.openjdk.jconsole.savedState"
end
