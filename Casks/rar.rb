cask "rar" do
  arch = Hardware::CPU.intel? ? "x64" : "arm"

  version "6.10"

  if Hardware::CPU.intel?
    sha256 "5c68d6b55e483e498d1b2851ff293098a5b537ca8676dc5bb561d05abcd57664"
  else
    sha256 "64eefac221a5e5f93934360114e5e0f1f750606e0e5d7823c780887f6630c13c"
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
