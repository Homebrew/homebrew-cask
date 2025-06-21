cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.20"
  sha256 arm:   "c3a8b69dac7b41191ce1f1ce9a94dbbe7f843fd238bda21f29ad5f4c4b4a3b1a",
         intel: "e559dc23f2ed4601ff407221276ba7c922ced794f9b1bcb1f006656cd3eeac07"

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

  no_autobump! because: :bumped_by_upstream

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
