cask "nullpomino" do
  version "7.5.0"
  sha256 "6edfc0d21b7f006a255d63ce0a9d9f920400e5c01e7072fbcc4e139a18148eae"

  url "https://github.com/nullpomino/nullpomino/releases/download/v#{version}/NullpoMino#{version}.dmg"
  name "NullpoMino"
  desc "Action puzzle game"
  homepage "https://github.com/nullpomino/nullpomino"

  deprecate! date: "2024-07-27", because: :unmaintained

  app "NullpoMino_#{version}.app"

  caveats do
    requires_rosetta
  end
end
