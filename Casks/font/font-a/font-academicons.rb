cask "font-academicons" do
  version "1.9.4"
  sha256 "6f27234f174e9a8872296b1778083393127773ddcb19f0b3cc5ab3bfa42c37e9"

  url "https://github.com/jpswalsh/academicons/archive/v#{version}.zip"
  name "Academicons"
  homepage "https://github.com/jpswalsh/academicons"

  font "academicons-#{version}/fonts/academicons.ttf"

  # No zap stanza required
end
