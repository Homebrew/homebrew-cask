cask "rar" do
  version "6.0.0"
  sha256 "d4470360055b51c3799372d16b36987189918c381d238f2eb6a469bffd052d61"

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
