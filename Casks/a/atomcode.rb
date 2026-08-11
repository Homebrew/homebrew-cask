cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.6"
  sha256 arm:          "cc2dbc9816abe83eb238348e0a3505b4ab080d73431181335642074505ca167a",
         intel:        "3140bb192b7592923758e26e0d23b355f4adea3a5ea9f817c54379d205f65539",
         arm64_linux:  "2af0e807a05ed2e0689497d6e7aa6af05850049b2fc3db10f9f14a00118b0e84",
         x86_64_linux: "1a16001ae7d6f54ecf4f77c92d7794487da86d205b50da4316510bc4cf016a94"

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
