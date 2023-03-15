cask "ghdl" do
  version "3.0.0"
  sha256 "4fabe56ecb5affa39ebc5a7de5de43eb020b1cc3c0ab3ff1bc4354505cd4ee8e"

  url "https://github.com/ghdl/ghdl/releases/download/v#{version}/ghdl-macos-11-mcode.tgz"
  name "ghdl"
  desc "VHDL 2008/93/87 simulator"
  homepage "https://github.com/ghdl/ghdl/"

  binary "bin/ghdl"
end
