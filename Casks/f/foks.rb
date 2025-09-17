cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4"
  sha256 arm:   "61d26c22ff3b241ff99be4cd38dbb81ceb411b14cd49d584c8e7d4658e122822",
         intel: "2503f6ecc93794b51e256c4abd784cb440d1a333709434fc344a001eb06fecf2"

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
