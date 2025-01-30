cask "pwndbg" do
  version "2025.01.20"
  sha256 "b2ff761411388c173a59502c512ed690824e61637d09cfdf4638c64653a78138"

  url "https://github.com/pwndbg/pwndbg/releases/download/#{version}/pwndbg_#{version}_macos_amd64.tar.xz"
  name "pwndbg"
  desc "Exploit Development and Reverse Engineering with GDB Made Easy"
  homepage "https://github.com/pwndbg/pwndbg"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "pwndbg/bin/pwndbg"

  zap trash: "~/.cache/pwndbg"

  caveats do
    requires_rosetta
  end
end
