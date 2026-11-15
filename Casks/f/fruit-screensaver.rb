cask "fruit-screensaver" do
  version "1.3.4"
  sha256 "3dc2fcf7ab26c00e70404e3ea8805c226f5db7eaf787b9e0b1a26566da38e61b"

  url "https://github.com/Corkscrews/fruit/releases/download/#{version}/Fruit.saver.tar.gz"
  name "Fruit Screensaver"
  desc "Screensaver of the vintage Apple logo"
  homepage "https://github.com/Corkscrews/fruit"

  disable! date: "2026-11-15", because: :fails_gatekeeper_check

  depends_on :macos

  screen_saver "Fruit.saver"

  zap :not_required
end
