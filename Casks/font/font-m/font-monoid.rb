cask "font-monoid" do
  version "0.61"
  sha256 :no_check

  url "https://github.com/larsenwork/monoid/blob/release/Monoid.zip?raw=true",
      verified: "github.com/larsenwork/monoid/"
  name "Monoid"
  homepage "https://larsenwork.com/monoid/"

  livecheck do
    url :url
  end

  font "Monoid-Bold.ttf"
  font "Monoid-Italic.ttf"
  font "Monoid-Regular.ttf"
  font "Monoid-Retina.ttf"

  caveats <<~EOS
    #{token} only installs the Normal Weight, Medium LineHeight, with Ligatures variant.
    To get other styles, please tap the sscotth/homebrew-monoid repo
      brew tap sscotth/monoid
  EOS

  # No zap stanza required
end
