cask "sapmachine-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "22"
  sha256 arm:   "b275798b5028071d7637fc70b5cbe28ed55f03259793983322ea3d8e8c1f6540",
         intel: "528419c3ae4dc7fa04054eeeaae912407566190016ba56457dfcaa823ac4262f"

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
