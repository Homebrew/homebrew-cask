cask "font-departure-mono" do
  version "1.350"
  sha256 "5aff57902c02acb32c6116ca301ae32a674e17f38b01c58d0b580db2eac2c437"

  url "https://github.com/rektdeckard/departure-mono/releases/download/v#{version}/DepartureMono-#{version}.zip"
  name "Departure Mono"
  homepage "https://github.com/rektdeckard/departure-mono"

  font "DepartureMono-Regular.otf"

  # No zap stanza required
end
