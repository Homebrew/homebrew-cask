cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.7.0.4638"

  on_macos do
    sha256 "8a4611b2899dafeef2be6c2d820b3d2c004a02acd012bf7b0f1fd08ca9193659"

    depends_on arch: :arm64
  end
  on_linux do
    sha256 arm64_linux:  "f4a69cc7f9c1312567572f674e4343094e6325e1c142d05d3e491482d8979329",
           x86_64_linux: "42b9dd631120b8776cd63daafd18db8e2d1229fdcde2a3ce6ef258580eb63a8c"
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
