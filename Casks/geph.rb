cask "geph" do
  version "4.4.3"
  sha256 "88b8d1bef0ca0a0bbb94243da3e29973e6e4e3babf37a1c13a84524ca214b301"

  url "https://f001.backblazeb2.com/file/geph4-dl/Geph4Releases/#{version}/geph-macos-#{version}.dmg",
      verified: "f001.backblazeb2.com/file/geph4-dl/"
  name "Geph"
  desc "Modular Internet censorship circumvention system"
  homepage "https://geph.io/"

  livecheck do
    url "https://github.com/geph-official/geph4"
  end

  app "Geph.app"
end
