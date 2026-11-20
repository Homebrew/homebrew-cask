cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.12.0.17622"
  sha256 arm:          "b64ce7175fb6cd63b277e6981052285fc4bb0437d98144ca754c054d66972838",
         arm64_linux:  "258cb106e50721f6e58ba0e0bccd1c88cdc1bfe6b394871dc6640dc43ca12fea",
         x86_64_linux: "c692e64dad89ea9e2388ec338dad47fa8703954e1c0ca8af111bc43e34afaa99"

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
