cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.5.0.4158"

  on_macos do
    sha256 "181df66a25b6cab6a4428f782fe279e01374088c1f3240fd946f7b91d35457e6"

    depends_on arch: :arm64
  end
  on_linux do
    sha256 arm64_linux:  "596018ec03f6282588e6bde56904625a4abd0c65c3e4dc3e05a9ecd28381c644",
           x86_64_linux: "dbd4ee20257f73010ad7f8a2c2552373039ee3610af252416e6f13f7ff915460"
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
