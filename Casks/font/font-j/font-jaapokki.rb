cask "font-jaapokki" do
  version "1.001"
  sha256 :no_check

  url "https://type.mikkonuuttila.com/fonts/jaapokki.zip"
  name "Jaapokki"
  homepage "https://type.mikkonuuttila.com/jaapokki/"

  livecheck do
    skip "No version information available"
  end

  font "Jaapokki-Regular.otf"
  font "Jaapokkienchance-Regular.otf"
  font "Jaapokkisubtract-Regular.otf"

  # No zap stanza required
end
