cask "font-departure-mono" do
  version "1.420"
  sha256 "95481ab2f4fe7ee79b200971b63158741b8cfe228076499cb8abff46ef1fac6d"

  url "https://github.com/rektdeckard/departure-mono/releases/download/v#{version}/DepartureMono-#{version}.zip"
  name "Departure Mono"
  homepage "https://github.com/rektdeckard/departure-mono"

  font "DepartureMono-#{version}/DepartureMono-Regular.otf"

  # No zap stanza required
end
