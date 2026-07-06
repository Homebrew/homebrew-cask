cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.3.0.3493"

  artifact = "sonarqube-cli-#{version}-#{os}-#{arch}.bin"

  url "https://binaries.sonarsource.com/Distribution/sonarqube-cli/#{version}/#{os}/#{artifact}"
  on_macos do
    sha256 "f4c80d4c3c484e7c2545395931bc0035f895deaec10003d4479e08d3cad28045"
    depends_on arch: :arm64
  end

  on_linux do
    sha256 arm64_linux:  "57019f9b8540015c0aba5a9e6defc3d46b1ff984fa12f71602597b4c82bee679",
           x86_64_linux: "c999e7873f53df19512aae53e1089f13bb3e8d87680d8aa0d1de2f8d801950c9"
  end

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
