cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1"
  sha256 arm:   "13a711857b43e82a1416f2ef26613f1bf8fc3f3508eaf06b883deb334fc1e006",
         intel: "e78ada334de6a98ee0c22bb99d24091ca931403e15f4e3267212c013da1bfee2"

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
