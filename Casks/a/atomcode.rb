cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.6"
  sha256 arm:          "9837c40774811c54e30bed6552350c12dc047ef466a3acecec6f022d5370f76b",
         intel:        "5973599efc094bf7e61b79355756f623714e2b760a3da01e8789735e063b6d34",
         arm64_linux:  "0e993992d2bd92809660b733e97257b15f8c458765be883eea484e5a5618fc47",
         x86_64_linux: "2cc636e95d14a904b33fbb7c810ed42ee6ea5240767c24326f21b5ea47344862"

  url "https://atomgit.com/atomgit_atomcode/atomcode/releases/download/v#{version}/atomcode-v#{version}-#{os}-#{arch}.tar.gz"
  name "AtomCode"
  desc "Open-source terminal AI coding agent"
  homepage "https://atomgit.com/atomgit_atomcode/atomcode"

  livecheck do
    url "https://atomgit.com/atomgit_atomcode/atomcode.git"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :git
  end

  binary "atomcode"

  zap rmdir: "~/.atomcode"
end
