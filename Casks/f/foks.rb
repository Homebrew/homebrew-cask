cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2"
  sha256 arm:   "b3d334e39254ceaf0ded3f6d06bb4ebd3a891656bbfd193d72b896ebe1112a69",
         intel: "d8c6b577a75677534ccc8592bc9242fcc27a5c89cc434c03f1ab4a30bdf2b128"

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
