cask "geph" do
  version "4.3.2"
  sha256 "c1cdcd0c367e468a30ad3b68ca7fa8d53f77c098486c66a1000cd51eb38d48ef"

  url "https://f001.backblazeb2.com/file/geph4-dl/Geph4Releases/#{version}/geph-macos-#{version}.dmg",
      verified: "f001.backblazeb2.com/file/geph4-dl/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/"

  livecheck do
    skip
  end

  app "Geph.app"
end
