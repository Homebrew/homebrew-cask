cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.13.1.18209"
  sha256 arm:          "f5de07e980a784a16c535ae51e2816df5961e2ecdb136224158be087f63ea9e2",
         arm64_linux:  "ce018c8dda6cef163416aad742d8192c587c73a51bd40be9441f48780f24f343",
         x86_64_linux: "b2e3facf6038514c846f7c3cfa2b7cf0a0761c8b052fc5b76fe424cdfbc9c9b7"

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
