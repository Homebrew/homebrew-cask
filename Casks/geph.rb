cask "geph" do
  version "4.2.3"
  sha256 "ed0dfbb5b101c25903b70200461f1ab6dd0405c1bca0717a81f9382ceb14002b"

  url "https://f001.backblazeb2.com/file/geph4-dl/Geph4Releases/#{version}/geph-macos-#{version}.dmg",
      verified: "f001.backblazeb2.com/file/geph4-dl/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/"

  app "Geph.app"
end
