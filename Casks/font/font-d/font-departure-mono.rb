cask "font-departure-mono" do
  version "1.500"
  sha256 "bf3e48059aeef4617ec585bdea81dcc3491c576b3e7a472f52faf40e09ee5c3a"

  url "https://github.com/rektdeckard/departure-mono/releases/download/v#{version}/DepartureMono-#{version}.zip"
  name "Departure Mono"
  homepage "https://github.com/rektdeckard/departure-mono"

  font "DepartureMono-#{version}/DepartureMono-Regular.otf"

  # No zap stanza required
end
