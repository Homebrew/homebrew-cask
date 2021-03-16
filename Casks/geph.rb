cask "geph" do
  version "4.2.3"
  sha256 "2535b7a0259a083ae318ac265e290ec1bb9842ccf670f1d17b6aca8c33bf6a97"

  url "https://f001.backblazeb2.com/file/geph4-dl/Geph4Releases/#{version}/geph-macos-#{version}.dmg",
      verified: "f001.backblazeb2.com/file/geph4-dl/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/"

  app "Geph.app"
end
