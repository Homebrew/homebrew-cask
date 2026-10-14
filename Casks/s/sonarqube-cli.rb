cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.10.0.16040"
  sha256 arm:          "2d9fdd139431b5c304432d7cf6a792136eea679db2ff5395de0dacca0cd6dac4",
         arm64_linux:  "a04b1900cf24c5560be05c290f06349b7c9e3967a94515db745353a2e5689f03",
         x86_64_linux: "d0f805f29984888504cfc750f30cb4de1ae8172a2ac38f88e79f057a519cbc9e"

  on_macos do
    depends_on arch: :arm64
  end

  artifact = "sonarqube-cli-#{version}-#{os}-#{arch}.bin"

  url "https://binaries.sonarsource.com/Distribution/sonarqube-cli/#{version}/#{os}/#{artifact}"
  name "SonarQube CLI"
  desc "Code quality and security for terminal workflows, scripts, and AI agents"
  homepage "https://www.sonarsource.com/sonarqube/cli/"

  livecheck do
    url "https://binaries.sonarsource.com/Distribution/sonarqube-cli/stable.json"
    strategy :json do |json|
      json["version"]
    end
  end

  binary artifact, target: "sonar"

  zap script: {
    executable:   artifact,
    args:         ["system", "reset", "--force"],
    must_succeed: false,
  }
end
