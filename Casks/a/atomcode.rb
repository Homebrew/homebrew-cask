cask "atomcode" do
  arch arm: "arm64", intel: "x64"
  os macos: "darwin", linux: "linux"

  version "4.24.1"
  sha256 arm:          "a66a21324c457f264e62d1ee0e810aa7ed2f6d00e31b1fb56f4d42c5fd4c7612",
         intel:        "a43ac379ca8c3356cd4871843a94e309711c93e9533a4adb7427336bbd703b08",
         arm64_linux:  "2d664632f0a6405b8be25ab713295fe51a1779365a5b9c7d6aa92d7ff9c1fa06",
         x86_64_linux: "a31aa2dbac564ec8ce6fe73ec093cc89d45fb1ed9536354e596333a89c49813f"

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
