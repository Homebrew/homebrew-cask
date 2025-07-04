cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.0"
  sha256 arm:   "2ed9b466b4071d1b14752ba162bd35b10a83553f6e598117204da83906c9d4a7",
         intel: "22c252ff0f31c8fbbc4abc4d0673edbd7a002cf6ba9a7e0590e8d9622587cf39"

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

  binary "foks"
  binary "foks", target: "git-remote-foks"

  postflight do
    set_permissions "#{staged_path}/foks", "0755"
  end

  zap trash: [
    "~/Library/Caches/foks",
    "~/Library/Logs/foks",
  ]
end
