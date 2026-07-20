cask "font-monoisome" do
  version "0.61"
  sha256 :no_check

  url "https://github.com/larsenwork/monoid/blob/master/Monoisome/Monoisome-Regular.ttf?raw=true",
      verified: "github.com/larsenwork/monoid/"
  name "Monoisome"
  homepage "https://larsenwork.com/monoid/"

  livecheck do
    url :url
  end

  font "Monoisome-Regular.ttf"

  # No zap stanza required
end
