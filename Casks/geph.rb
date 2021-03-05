cask "geph" do
  version "4.1.7"
  sha256 "e8296a4c3bfeb8a329ed7960b3fc6d121f700473884138d223832e8d507d87ed"

  url "https://f001.backblazeb2.com/file/geph4-dl/Geph4Releases/#{version}/geph-macos-#{version}.dmg",
      verified: "f001.backblazeb2.com/file/geph4-dl/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/"

  app "Geph.app"
end
