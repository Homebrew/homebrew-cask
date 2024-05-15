cask "font-bitstream-vera" do
  version "1.10"
  sha256 "1b0ba0f7af2e1d05f64e259d351965a2cb2673104a057ce715a06969c478f6cc"

  url "https://ftp.gnome.org/pub/GNOME/sources/ttf-bitstream-vera/#{version}/ttf-bitstream-vera-#{version}.zip"
  name "Bitstream Vera"
  homepage "https://www.gnome.org/fonts/"

  font "ttf-bitstream-vera-1.10/Vera.ttf"
  font "ttf-bitstream-vera-1.10/VeraBI.ttf"
  font "ttf-bitstream-vera-1.10/VeraBd.ttf"
  font "ttf-bitstream-vera-1.10/VeraIt.ttf"
  font "ttf-bitstream-vera-1.10/VeraMoBI.ttf"
  font "ttf-bitstream-vera-1.10/VeraMoBd.ttf"
  font "ttf-bitstream-vera-1.10/VeraMoIt.ttf"
  font "ttf-bitstream-vera-1.10/VeraMono.ttf"
  font "ttf-bitstream-vera-1.10/VeraSe.ttf"
  font "ttf-bitstream-vera-1.10/VeraSeBd.ttf"

  # No zap stanza required
end
