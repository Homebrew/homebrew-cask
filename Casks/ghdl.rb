cask "ghdl" do
  version :latest
  sha256 :no_check

  url "https://github.com/ghdl/ghdl/releases/download/v3.0.0/ghdl-macos-11-mcode.tgz"
  name "ghdl"
  desc "VHDL 2008/93/87 simulator"
  homepage "https://github.com/ghdl/ghdl/"

  binary "bin/ghdl"
end
