cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.10.1.16776"
  sha256 arm:          "c6912ccc3ee2aab881d603cbcc854abfd2eff2c4f9030601eee3a94a6b1b9842",
         arm64_linux:  "1fe312ff2886e60bbe3d89321d501f08c5c4927b79dcdc954341aa628fccf721",
         x86_64_linux: "ebefc44cc3f151b1094abdec2fc36e313778dd1d5207f417f02ad832acae6d40"

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
