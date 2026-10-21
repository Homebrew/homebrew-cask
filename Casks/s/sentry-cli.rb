cask "sentry-cli" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "3.8.1"
  sha256 arm:          "b117c50c99371e68c21544fada0f5f90a713acda8b090fdeef648417b231ce51",
         intel:        "6bee493e528e303d395221c17c38307dbe0974f6914a3700b8ff1986bcd629c6",
         arm64_linux:  "95b4530ca3723d79def0928731534b75db0213130e8681892f19c4e57ab258f9",
         x86_64_linux: "f08a638e6e979a3c4f9c230bdd496dd88e7a0a0847d3e704ad8a733b189bb029"

  url "https://github.com/getsentry/sentry-cli/releases/download/#{version}/sentry-cli-#{os}-#{arch}"
  name "Sentry CLI"
  desc "Command-line utility to interact with Sentry"
  homepage "https://docs.sentry.io/cli/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "sentry-cli-#{os}-#{arch}", target: "sentry-cli"

  zap trash: "~/.sentryclirc"
end
