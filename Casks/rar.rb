cask "rar" do
  version "5.9.1"
  sha256 "65cef7ada7728819de9dddde41fb0180ef2b3f7a40525638894e9a3fdb13f570"

  url "https://www.rarlab.com/rar/rarosx-#{version}.tar.gz"
  name "RAR Archiver"
  homepage "https://www.rarlab.com/"

  conflicts_with formula: "unrar"

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"
end
