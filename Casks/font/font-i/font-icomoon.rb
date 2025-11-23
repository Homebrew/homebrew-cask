cask "font-icomoon" do
  version :latest
  sha256 :no_check

  url "https://github.com/Keyamoon/IcoMoon-Free/archive/refs/heads/master.tar.gz",
      verified: "github.com/Keyamoon/IcoMoon-Free/"
  name "IcoMoon"
  homepage "https://icomoon.io/"

  font "IcoMoon-Free-master/Font/IcoMoon-Free.ttf"

  # No zap stanza required
end
