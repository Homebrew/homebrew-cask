cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5"
  sha256 arm:   "8ac2071b9380fe5381d9006fbdb6900ea238c65f014b575f46a3b1bf32351107",
         intel: "054920f2cc5b1a3493f1415cac8e2a4cc185120ab7aba82fd0b086d006274087"

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
