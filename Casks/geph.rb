cask "geph" do
  version "4.3.1"
  sha256 "57afc05ecca54066be7999cb14ac4688d679c6b64b9ec40a77ad49564ad8d33b"

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
