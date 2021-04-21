cask "rar" do
  version "6.0.1"
  sha256 "a3b2646829d61d01a566d4311d292c3b33d566354689d5630fdada5ff124aab5"

  url "https://www.rarlab.com/rar/rarosx-#{version}.tar.gz"
  name "RAR Archiver"
  desc "Archive manager for data compression and backups"
  homepage "https://www.rarlab.com/"

  livecheck do
    url "https://www.rarlab.com/download.htm"
    strategy :page_match
    regex(%r{href=.*?/rarosx-(\d+(:?\.\d+)*)\.tar\.gz}i)
  end

  binary "rar/rar"
  binary "rar/unrar"
  artifact "rar/default.sfx", target: "#{HOMEBREW_PREFIX}/lib/default.sfx"
  artifact "rar/rarfiles.lst", target: "#{HOMEBREW_PREFIX}/etc/rarfiles.lst"
end
