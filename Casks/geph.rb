cask "geph" do
  version "4.4.4"
  sha256 "5381ad57c9bed2a6c238eeaf28f9c345eb1a0cacadd6ff59566032502d20fb99"

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
