cask "ml-job-swarm" do
  version "0.2.1"
  sha256 "561daabe5f8baa0cd8596e28bd986bfcd377882353c964486eb98c15dc371d4a"

  url "https://github.com/davidlifschitz/job-swarm/releases/download/v#{version}/MLJobSwarm-#{version}-macos-arm64.tar.gz",
      verified: "github.com/davidlifschitz/job-swarm/"
  name "ML Job Swarm"
  desc "Local-first job catalog and resume matching for curated technical roles"
  homepage "https://github.com/davidlifschitz/job-swarm"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "MLJobSwarm.app"

  postflight do
    system_command "/usr/bin/xattr", args: ["-cr", "#{appdir}/MLJobSwarm.app"]
    system_command "/usr/bin/codesign", args: ["--force", "--deep", "--sign", "-", "#{appdir}/MLJobSwarm.app"]
  end

  zap trash: [
    "~/Library/Application Support/MLJobSwarm",
  ]
end