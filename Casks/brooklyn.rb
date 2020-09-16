cask "brooklyn" do
  version "2.0.1"
  sha256 "6ecde466f8f88c2649dbf3e38c98fd7abb95a7d1828ac4cc8d499f2c7a0cb9ec"

  url "https://github.com/pedrommcarrasco/Brooklyn/releases/download/#{version}/Brooklyn.saver.zip"
  appcast "https://github.com/pedrommcarrasco/Brooklyn/releases.atom"
  name "Brooklyn"
  homepage "https://github.com/pedrommcarrasco/Brooklyn"

  screen_saver "Brooklyn.saver"
end
