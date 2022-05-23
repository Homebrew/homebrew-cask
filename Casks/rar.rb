cask "rar" do
  arch = Hardware::CPU.intel? ? "x64" : "arm"

  version "6.12"

  if Hardware::CPU.intel?
    sha256 "f607ca12bdc313884c5a6f504fbf662a0511bf39fe04a9b2a694c986cd34bb67"
  else
    sha256 "491f345712a02eb26a3b424658c30652e22e2201a0c5c547fb97c25a756a264b"
  end

  url "https://www.rarlab.com/rar/rarmacos-#{arch}-#{version.no_dots}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    regex(/>s*RAR\s+v?(\d+(:?\.\d+)+)\s+for\s+macOS/i)
  end

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"
end
