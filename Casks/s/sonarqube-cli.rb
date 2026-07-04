cask "sonarqube-cli" do
  arch arm: "arm64", intel: "x86-64"
  os macos: "macos", linux: "linux"

  version "1.2.0.3278"

  artifact = "sonarqube-cli-#{version}-#{os}-#{arch}.bin"

  url "https://binaries.sonarsource.com/Distribution/sonarqube-cli/#{version}/#{os}/#{artifact}"
  on_macos do
    sha256 "7a1aeaea130e35d6570e3f4c8f32de9efc9bda1870108ba1189402b7ba7f26ed"
    depends_on arch: :arm64
  end

  on_linux do
    sha256 arm64_linux:  "c3435baad44c27950617aa65b252824ec0130713f544073c4b1c2715b8b70851",
           x86_64_linux: "508751d6574729357ba415a367157130b1fb4f5e5959d6cbd16170d38da5f957"
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
