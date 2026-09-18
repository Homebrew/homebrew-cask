cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.1.0"
  sha256 arm:          "4bd61524b311ef9ccd59a7d6a70db0f803de5a63e638f3e11ccca7360f6f95fb",
         intel:        "72e884d6653d92f5ed8ee6ca3f4fe89dee4c02f0b598821f12b6654986422c58",
         arm64_linux:  "ba530380c0947f79f96b5967b78f6bf5b3146990ea30356d7fa751e04ebd5007",
         x86_64_linux: "d6c827464462bb7b5a1bf98c18aefda0e4d9735ecba81388218b6926162280f8"

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
