cask "phocus" do
  version "3.5.4"
  sha256 "9240515a882790a53e908f3157b1a7b8a2182bcb3b44316a101d4f3db370290d"

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name "Hasselblad Phocus"
  homepage "https://www.hasselblad.com/software/phocus"

  depends_on macos: ">= :sierra"

  app "Phocus.app"
end
