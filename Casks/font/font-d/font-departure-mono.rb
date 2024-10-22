cask "font-departure-mono" do
  version "1.422"
  sha256 "fae4949a63893d265c79b7dd9903e63c5a3db52d07d4f29aa604390663067bdb"

  url "https://github.com/rektdeckard/departure-mono/releases/download/v#{version}/DepartureMono-#{version}.zip"
  name "Departure Mono"
  homepage "https://github.com/rektdeckard/departure-mono"

  font "DepartureMono-Regular.otf"

  # No zap stanza required
end
