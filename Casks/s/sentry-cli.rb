cask "sentry-cli" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "3.7.0"
  sha256 arm:          "c66564094fbe56ee3b359f7574541f858b8d1df0328a0a759da972fbf1886048",
         intel:        "fcd74786b4d95c6b7531662607897aadd5ab5d64c5d0468a6f4bd97ad04bedb8",
         arm64_linux:  "69cc0e951f663a332fd3bb3069e443cb3748abbfce497ae2caac6d5a9ec7ae65",
         x86_64_linux: "cec71d46a7cc394c94b6e75f1601985c710d457376c546ef3975567b3671563b"

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
