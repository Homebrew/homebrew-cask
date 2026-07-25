cask "font-bitstream-vera" do
  version "1.10"
  sha256 "1b0ba0f7af2e1d05f64e259d351965a2cb2673104a057ce715a06969c478f6cc"

  url "https://download.gnome.org/sources/ttf-bitstream-vera/#{version}/ttf-bitstream-vera-#{version}.zip",
      verified: "download.gnome.org/sources/ttf-bitstream-vera/"
  name "Bitstream Vera"
  homepage "https://web.archive.org/web/20210314185159/https://www.gnome.org/fonts/"

  font "ttf-bitstream-vera-#{version}/Vera.ttf"
  font "ttf-bitstream-vera-#{version}/VeraBI.ttf"
  font "ttf-bitstream-vera-#{version}/VeraBd.ttf"
  font "ttf-bitstream-vera-#{version}/VeraIt.ttf"
  font "ttf-bitstream-vera-#{version}/VeraMoBI.ttf"
  font "ttf-bitstream-vera-#{version}/VeraMoBd.ttf"
  font "ttf-bitstream-vera-#{version}/VeraMoIt.ttf"
  font "ttf-bitstream-vera-#{version}/VeraMono.ttf"
  font "ttf-bitstream-vera-#{version}/VeraSe.ttf"
  font "ttf-bitstream-vera-#{version}/VeraSeBd.ttf"

  # No zap stanza required
end
