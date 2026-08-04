cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "5.0.4"
  sha256 arm:          "619fb76a11f68cab2bce2e3a87b529cd15d53625724ea055ce0271b0e18e6c71",
         intel:        "e561d79748c7585578941864eb105c8a893473e6bdaee6b085192bce1a9d4298",
         arm64_linux:  "9765a6f64e1d26146b304cbf8c3e2b47a714a5db50c37a8e55f890b88b521305",
         x86_64_linux: "7fd0561db7f979637d65d74ff321d8182b8e58238c2d4dd8ef0c9f75b857a227"

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
