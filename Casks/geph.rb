cask "geph" do
  version "4.4.0"
  sha256 "ec06e7b9e96ff05e85e803b95d0d8301969471bfc01ccd0fc226acbba10cee1b"

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
