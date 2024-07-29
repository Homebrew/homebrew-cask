cask "sapmachine-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "22.0.2"
  sha256 arm:   "acfc48c89def275753cfb93f683929c9987ecd27fc12189d7e176dec7f2f7c13",
         intel: "2efeba61d8bc752c28ab79303c41cdc4e54576d21d0e7bdac00985706fbfc160"

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
