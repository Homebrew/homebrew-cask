cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.4.0.3748"

  artifact = "sonarqube-cli-#{version}-#{os}-#{arch}.bin"

  url "https://binaries.sonarsource.com/Distribution/sonarqube-cli/#{version}/#{os}/#{artifact}"
  on_macos do
    sha256 "2a23cbbd04c97204f84561032f4cf23f04a057d98f39c278805893fae54854f6"
    depends_on arch: :arm64
  end

  on_linux do
    sha256 arm64_linux:  "3af62fcd65faca4b3bb4a3baae2bc9cbb427f25b189e5f6e0760c7d59b64185a",
           x86_64_linux: "a57425c8f3d2eab1bae6628fc532f19180b022efd47a280d3eb718e1ac09d382"
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
