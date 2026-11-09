cask "super" do
  arch arm: "arm64", intel: "amd64"
  os macos: "darwin", linux: "linux"

  version "0.4.0"
  sha256 arm:          "29dc8942b1bb14a408c7cbdf02e11f913ff8c895af07b2eac7fd84825af287fa",
         intel:        "1e930f1b0e46ce4aefb4eedd717eac75d29a566a30e2671848ec3a0455c38fa9",
         arm64_linux:  "c775b96b1494e5decc935e517a3787d66e0b4458660a4537a0a6d09065aaefbb",
         x86_64_linux: "41067ee343374c1b946500acdcb2e6e0f130cde7946d95bb38d73507957fce90"

  url "https://github.com/superdb/super/releases/download/v#{version}/super-v#{version}.#{os}-#{arch}.tar.gz"
  name "SuperDB"
  desc "Analytics database that fuses structured and semi-structured data"
  homepage "https://superdb.org/"

  binary "super"

  zap :not_required
end
