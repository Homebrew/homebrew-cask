cask "phocus" do
  version "3.5.2"
  sha256 "e0d35063ce9eb0bfaa5052a1925a2c60b25a759593d611fde0a6bf978bc8f67c"

  url "https://cdn.hasselblad.com/software/Phocus-for-Mac/#{version}/Phocus-#{version}.dmg"
  name "Hasselblad Phocus"
  homepage "https://www.hasselblad.com/software/phocus"

  depends_on macos: ">= :sierra"

  app "Phocus.app"
end
