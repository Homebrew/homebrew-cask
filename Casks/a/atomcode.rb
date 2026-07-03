cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.25.9"
  sha256 arm:          "e8e3eb0f139b9915557210383ea2dc51fb9b591ccf513d1b18b139dfbe5ec181",
         intel:        "c05db3e27f4957632879faa04cacda72fab0d4944cb9e95c84869ec9546d48a1",
         arm64_linux:  "25ba63cc1ed6fe39070317f03109eadf3f5bd922b4cdabf4e62266584a1acb15",
         x86_64_linux: "1d26cbc00dfccdbd9491d4342e2f235903de0c309e31eefd968e1a2cd0b24f29"

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
