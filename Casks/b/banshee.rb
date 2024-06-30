cask "banshee" do
  version "2.6.1"
  sha256 "26fc3c77a72860fc2dfaee0741c88e9b8d7b8dac6ece2943e42917112e55c933"

  url "https://ftp.gnome.org/pub/GNOME/binaries/mac/banshee/banshee-#{version}.macosx.intel.dmg",
      verified: "gnome.org/pub/GNOME/binaries/mac/banshee/"
  name "Banshee"
  desc "Multimedia management and playback application"
  homepage "https://banshee.fm/"

  deprecate! date: "2023-12-17", because: :discontinued

  app "Banshee.app"

  caveats do
    requires_rosetta
  end
end
