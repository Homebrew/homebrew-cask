cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.21"
  sha256 arm:   "38687405b4f57059e3dd29338ea3fdf8d3e15b0809d620d6f60a1bcac9143f2d",
         intel: "09902f01acafc4b5c8a9e7a1e7691d308860ecf4da38ebd8d4da66a9b812507c"

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
