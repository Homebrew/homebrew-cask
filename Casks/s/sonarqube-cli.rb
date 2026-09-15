cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.8.0.5274"
  sha256 arm:          "ba4fb2ea8e98742db361162ec8454239d5d62c8cba8a6c41304cadb7f2151560",
         arm64_linux:  "532e71e48b910c58741f9118cde845854c1e4a821ed0f50e1502f06cda3c9bb5",
         x86_64_linux: "fbfd39b3798d7c11a1c5c81377351f82ba8ae6be65335243f0bb3c91e7a921d1"

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
