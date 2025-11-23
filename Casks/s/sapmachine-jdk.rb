cask "sapmachine-jdk" do
  arch arm: "aarch64", intel: "x64"

  on_arm do
    version "25.0.1"
    sha256 "665ebac7790a231fd3c924d159b315390f09322c328e3aa169ac8079eac0e383"
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
  end
  on_intel do
    version "24.0.2"
    sha256 "a1f1702231cbcbc6ee3bb6dddaf44b21ced473d17d296e9016b2b3ed05d29773"
    livecheck do
      skip "Legacy version"
    end
  end

  url "https://github.com/SAP/SapMachine/releases/download/sapmachine-#{version}/sapmachine-jdk-#{version}_macos-#{arch}_bin.dmg",
      verified: "github.com/SAP/SapMachine/"
  name "SapMachine OpenJDK Development Kit"
  desc "OpenJDK distribution from SAP"
  homepage "https://sapmachine.io/"

  artifact "sapmachine-jdk-#{version}.jdk", target: "/Library/Java/JavaVirtualMachines/sapmachine-jdk.jdk"

  zap trash: "~/Library/Saved Application State/com.sap.openjdk.jconsole.savedState"
end
