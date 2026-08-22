cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.6.0.4255"

  on_macos do
    sha256 "5ff39d44b0845e413334718ec37cdf876ceeaa2b5d3b1076f399426fef62ef5b"

    depends_on arch: :arm64
  end
  on_linux do
    sha256 arm64_linux:  "e3cdee5a32399564d377a767ce3ea4ffc3f0d56b0075e0490dfb21aa144e6433",
           x86_64_linux: "dfdedc9efac2b93d2634b971b2723488ccc8c30a10ffed5d7602bdba57a86d65"
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

  rename artifact, "sonar"

  binary "sonar"

  zap script: {
    executable:   "sonar",
    args:         ["system", "reset", "--force"],
    must_succeed: false,
  }
end
