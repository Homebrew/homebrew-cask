cask "font-server-mono" do
  version "0.0.4"
  sha256 "677169c9ed971ccafea0d55f4f34f3784e61a3b848784e12247608b344f477c4"

  url "https://github.com/internet-development/www-server-mono/archive/refs/tags/#{version}.tar.gz",
      verified: "github.com/internet-development/www-server-mono/"
  name "Server Mono"
  homepage "https://servermono.com/"

  font "www-server-mono-#{version}/fonts/ServerMono-Regular.otf"
  font "www-server-mono-#{version}/fonts/ServerMono-Regular-Italic.otf"

  # No zap stanza required
end
