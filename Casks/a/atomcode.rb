cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.2.8"
  sha256 arm:          "7f1a0561f760e68d67df98af7341cacd97080298fc0e48c173bb7d5837ca1fa8",
         intel:        "962c1a584a79fab78b8591e6fda774e0030d0ffc824df4a960e9fc8271d0100d",
         arm64_linux:  "7aba082389eb62c10f06da78214cbccfa9c8127d9a20dfc957ebe104dd3989a0",
         x86_64_linux: "1d6b39ab418bae406308be13461b3d8ae3d598775614e68ba6ad2a39f1125faa"

  url "https://atomgit.com/atomgit_atomcode/atomcode/releases/download/v#{version}/atomcode-v#{version}-#{os}-#{arch}.tar.gz"
  name "AtomCode"
  desc "Open-source terminal AI coding agent"
  homepage "https://atomgit.com/atomgit_atomcode/atomcode"

  livecheck do
    url "https://api.atomgit.com/api/v5/repos/atomgit_atomcode/atomcode/releases/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
    strategy :json do |json, regex|
      match = json["tag_name"]&.match(regex)
      next if match.blank?

      match[1]
    end
  end

  binary "atomcode"

  zap rmdir: "~/.atomcode"
end
