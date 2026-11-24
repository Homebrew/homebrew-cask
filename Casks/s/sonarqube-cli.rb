cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.13.0.18157"
  sha256 arm:          "1875ee76aad327bc957d5852b1bbb52408f8754de292ce7d761a8e1061ce86ac",
         arm64_linux:  "d2a5ce1e4a2fe961027b63227517b542baf16c1d9b776b2cbdc0329dd43ab5c2",
         x86_64_linux: "75878329178bcba775b5b39e3031124926602c621611c88ab7548db23a9d4dda"

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
