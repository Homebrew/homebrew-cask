cask "sapmachine-jdk" do
  arch arm: "aarch64", intel: "x64"

  version "23.0.2"
  sha256 arm:   "80eb38e4ae04927e32aace36ddfdd79c8532765855aca5bb3b3c54b21dfe30fa",
         intel: "c2eafe9246c3e0401c90d49a5b7d7b57c53d81b2e14c6f300a6d385510c449aa"

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_macos-#{arch}_bin.dmg",
      verified: "github.com/SAP/SapMachine/"
  name "SapMachine OpenJDK Development Kit"
  desc "OpenJDK distribution from SAP"
  homepage "https://sapmachine.io/"

  # The version information on the homepage is rendered client-side from the
  # following JSON file, so we have to check it instead.
  livecheck do
    url "https://sap.github.io/SapMachine/assets/data/sapmachine-releases-latest.json"
    regex(/^sapmachine[._-]v?(\d+(?:\.\d+)*)$/i)
    strategy :json do |json, regex|
      json.map do |_, item|
        next if item["ea"]

        item["releases"]&.map do |release|
          match = release["tag"]&.match(regex)
          next if match.blank?

          match[1]
        end
      end.flatten
    end
  end

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk.jdk"

  zap trash: "~/Library/Saved Application State/com.sap.openjdk.jconsole.savedState"
end
