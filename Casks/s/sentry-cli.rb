cask "sentry-cli" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "3.8.2"
  sha256 arm:          "c80d92b6d34eb64fe7402f56cc7968fbb15aab1c763254ad428b55cc98ec7dcf",
         intel:        "084591ee1f0a43ba8696ccde30d4a79cd9a70d0fa294c5a10143a340f8f332ff",
         arm64_linux:  "b6e49fca868a36d20da2ada1832a0ce2f9ac7012c128207518b09d6b6c991f4d",
         x86_64_linux: "c958865f9d4000183509ea21b1f04925d5390de6d8d87386b9e69f2b305070c3"

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
