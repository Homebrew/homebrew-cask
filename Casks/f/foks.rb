cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.19"
  sha256 arm:   "4408481959c2708b5ed46dd044707d4b40cc14abcaf58e7549953af1b1dd7ac0",
         intel: "c8252b1119f119c058ee7b2ab661a6d529d8f077cc42fa55ee3950a251dbdd37"

  url "https://pkgs.foks.pub/stable/darwin/foks-v#{version}-darwin-#{arch}.zip"
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
