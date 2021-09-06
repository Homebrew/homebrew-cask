cask "jqbx" do
  version "0.9.190"
  sha256 :no_check

  url "http://download.jqbx.fm/"
  name "JQBX"
  desc "Listen to Spotify music in sync with others"
  homepage "https://www.jqbx.fm/"

  depends_on cask: "spotify"

  app "JQBX.app"
end
