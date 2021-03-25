cask "geph" do
  version "4.2.6"
  sha256 "e258c05053b72d65f711fc165452c9b7096c3fab36b98e0fe9ed77b1aba36f13"

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
