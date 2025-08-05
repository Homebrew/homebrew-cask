cask "font-baloo" do
  version "1.443"
  sha256 "86db29e7463475fd0ce93376fff7eefb3a787525b8113bca9662b9cdc1c3a139"

  url "https://github.com/EkType/Baloo/releases/download/#{version}/Baloo_#{version}.zip"
  name "Baloo"
  homepage "https://github.com/EkType/Baloo"

  font "Fonts/Baloo-Regular.ttf"
  font "Fonts/BalooBhai-Regular.ttf"
  font "Fonts/BalooBhaijaan-Regular.ttf"
  font "Fonts/BalooBhaina-Regular.ttf"
  font "Fonts/BalooChettan-Regular.ttf"
  font "Fonts/BalooDa-Regular.ttf"
  font "Fonts/BalooPaaji-Regular.ttf"
  font "Fonts/BalooTamma-Regular.ttf"
  font "Fonts/BalooTammudu-Regular.ttf"
  font "Fonts/BalooThambi-Regular.ttf"

  # No zap stanza required
end
