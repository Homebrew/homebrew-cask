cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.8"
  sha256 arm:   "2286869a3b5e7fde8d6de2beb9b34d7c32d4c87f2cfe3e00687718210aadb54c",
         intel: "b04d0c025bf317d90f563a391f93b03f0f13be4b1ff98cf228e9a3ea2cf88b14"

  url "https://pkgs.foks.pub/stable/darwin/foks-v#{version}-darwin-brew-#{arch}.zip"
  name "FOKS"
  desc "Federated Open Key Service; E2EE KV-store and Git hosting"
  homepage "https://foks.pub/"

  livecheck do
    url "https://pkgs.foks.pub/stable/changelog.yml"
    strategy :yaml do |yaml|
      yaml["changelog"]&.map { |r| r["version"] }
    end
  end

  depends_on :macos

  binary "foks"
  binary "foks", target: "git-remote-foks"

  postflight_steps do
    set_permissions "foks", "0755"
  end

  zap trash: [
    "~/Library/Caches/foks",
    "~/Library/Logs/foks",
  ]
end
