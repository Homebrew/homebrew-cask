cask "foks" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3"
  sha256 arm:   "a09b69f055f0607a6e06db4c7c10de6127dc42cca697c18a8b3372c83507eb28",
         intel: "bacc7a2711bb332ce95b16fcb26aad610e8e1bafaf4d93bd2cb2507a18789938"

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
