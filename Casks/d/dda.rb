cask "dda" do
  arch arm: "aarch64", intel: "x86_64"
  os macos: "apple-darwin", linux: "unknown-linux-gnu"

  version "0.37.0"
  sha256 arm:          "8463be751a635a2926e854f6623685607b6ddf57d02a17fd85df4803848b5b54",
         intel:        "200d5c7926574eb344bf985d9ef108f0f79b7e7f584d501f0eec9bc1cbf28ee4",
         arm64_linux:  "8e177502c90db0d31557dfbadfb954b3a952a4e455c538a034017ef07ad64065",
         x86_64_linux: "ee57f86edcc125f5976abd11f836d698dbbaf2490a51b160bafc96163ce61910"

  url "https://github.com/DataDog/datadog-agent-dev/releases/download/v#{version}/dda-#{arch}-#{os}.tar.gz"
  name "dda"
  desc "Tool for developing on the Datadog Agent platform"
  homepage "https://github.com/DataDog/datadog-agent"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  binary "dda"

  uninstall script: {
    executable: "dda",
    args:       ["self", "remove"],
  }

  # No zap stanza required
end
