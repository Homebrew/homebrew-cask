cask "starwarsscroll" do
  version "1.2.1"
  sha256 :no_check

  url "https://killerrobots.com/starwarsscroll/StarWarsScroll.zip"
  name "StarWarsScroll"
  desc "Screen saver accurately recreating the opening titles of the 6 Star Wars movies"
  homepage "https://killerrobots.com/screensavers"

  livecheck do
    url :homepage
    regex(%r{StarWarsScroll Screen Saver</h\d>.+?>v?(\d+(?:\.\d+)+)}im)
  end

  screen_saver "StarWarsScroll v#{version}/StarWarsScroll.saver"
end
