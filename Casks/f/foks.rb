cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.0.18"
  sha256 arm:   "10193423d970987070c2015ad395982c7f6c7bb0f73ab291064b81c4ffaeae11",
         intel: "38759527f276fbc4d7b0663476e1e50d6fa5ade325c50b9be48853f07f106ec5"

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

  postflight do
    set_permissions "#{staged_path}/foks", "0755"
  end

  zap trash: [
    "~/Library/Caches/foks",
    "~/Library/Logs/foks",
  ]
end
