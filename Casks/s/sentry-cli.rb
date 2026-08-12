cask "sentry-cli" do
  arch arm: on_system_conditional(macos: "arm64", linux: "aarch64"), intel: "x86_64"
  os macos: "Darwin", linux: "Linux"

  version "3.6.2"
  sha256 arm:          "5a497deb1e388cc6445c09ddd6d2da4fc2aae8295405d6393c2e0ee635ca3687",
         intel:        "efe0a5289cdd0ea8ff727b1228a1bea6c840f2da38152e8f9f5ced05bd6659cd",
         arm64_linux:  "ff112ecf694b7d6b3629a6228ed4e3f7a0d51401bdf48a5051a79d8749dccd06",
         x86_64_linux: "3a4bbf2c0d06378d4e59b337647483751a0a2b1603db5fd4991847d0cfd6478c"

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
