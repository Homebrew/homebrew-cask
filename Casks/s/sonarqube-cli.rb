cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.11.0.16877"
  sha256 arm:          "8fe5774ac23cd05418e6de5378f6a1a90c9d29bd775f494d4d2960973609936e",
         arm64_linux:  "4b47619bdadad7c21a196d7352684593c25d0fc6707dd2b6152b056348730ebd",
         x86_64_linux: "03b7336a55979c5b9b47e35696a23d7fcd5306bd6f8217fd29eae106578d0428"

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
