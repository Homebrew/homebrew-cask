cask "font-server-mono" do
  version "0.0.5"
  sha256 "ba94c13607a98a8bf303e785c5cdf03d90d77089469c68ccbb4f4f4564f21719"

  url "https://github.com/internet-development/www-server-mono/archive/refs/tags/#{version}.tar.gz",
      verified: "github.com/internet-development/www-server-mono/"
  name "Server Mono"
  homepage "https://servermono.com/"

  font "www-server-mono-#{version}/fonts/ServerMono-Regular.otf"
  font "www-server-mono-#{version}/fonts/ServerMono-Regular-Italic.otf"

  # No zap stanza required
end
