cask "flying-toasters" do
  version "1.1"
  sha256 "527f79335d49b8ba4b2706eab2ee0bfa7db9d2bbc2f02ae4b613ad1c1ccecc83"

  url "https://github.com/robertventurini/FlyingToasters/releases/download/#{version}/Flying.Toasters.zip"
  name "flying-toasters"
  desc "Recreation of AfterDarks 2.0 Flying Toasters screensaver"
  homepage "https://github.com/robertventurini/FlyingToasters"

  screen_saver "Flying Toasters.saver"
end
