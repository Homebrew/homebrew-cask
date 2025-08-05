cask "brooklyn" do
  version "2.1.0"
  sha256 "6f14527303a8d55384a38368e7fe1909c52c04cc1ce2fbd149d9712b8ab68ee6"

  url "https://github.com/pedrommcarrasco/Brooklyn/releases/download/#{version}/Brooklyn.saver.zip"
  name "Brooklyn"
  desc "Screen saver based on animations presented during Apple Special Event Brooklyn"
  homepage "https://github.com/pedrommcarrasco/Brooklyn"

  screen_saver "Brooklyn.saver"

  zap trash: "~/Library/Screen Savers/Brooklyn.saver"
end
