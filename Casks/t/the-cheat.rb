cask "the-cheat" do
  version "1.2.5"
  sha256 "24ed774cc21adc2355077123d04c2657295a41183fd5555c41a2342063c3dedc"

  url "https://chazmcgarvey.github.io/thecheat/thecheat-#{version}.dmg",
      verified: "chazmcgarvey.github.io/thecheat/"
  name "The Cheat"
  desc "Game trainer"
  homepage "https://github.com/chazmcgarvey/thecheat"

  deprecate! date: "2024-09-09", because: :unmaintained

  app "The Cheat.app"

  caveats do
    requires_rosetta
  end
end
