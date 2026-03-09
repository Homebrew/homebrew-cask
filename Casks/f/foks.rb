cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.6"
  sha256 arm:   "fbce543d3daf8cdbfc292a11a63ae7bc0c81429eaf77d6d42d88f938a59add17",
         intel: "9395c4cc66d9f83be4020b5f7321d0a2b23dd271acb578fea96c606aac164cdd"

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
