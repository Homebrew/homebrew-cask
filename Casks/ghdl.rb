cask "ghdl" do
  version "1.0.0"
  sha256 :no_check

  url "https://github.com/ghdl/ghdl/releases/download/nightly/ghdl-macos-10.15-mcode.tgz"
  name "ghdl"
  desc "VHDL 2008/93/87 simulator"
  homepage "https://github.com/ghdl/ghdl/"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "bin/ghdl"
end
