cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.9"
  sha256 arm:   "d734cb72ba23ebc0e5e8135b79d2e52093366798bb421909d51d3e8190073c30",
         intel: "691dae1492ec896a734e5d4482b0d9f273dbfbe1f66330e3bd39da1cdc416877"

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
