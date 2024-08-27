cask "font-server-mono" do
  version "0.0.3"
  sha256 "47e17e02f44deefbaa811a3f84a88fb96a203e196fa5e77f7b9f2816b6b4bccd"

  url "https://github.com/internet-development/www-server-mono/archive/refs/tags/#{version}.tar.gz",
      verified: "github.com/internet-development/www-server-mono/"
  name "Server Mono"
  desc "Programming font designed for ASCII art and CLI tools"
  homepage "https://servermono.com/"

  font "www-server-mono-#{version}/fonts/ServerMono-Regular.otf"
  font "www-server-mono-#{version}/fonts/ServerMono-Regular-Italic.otf"

  # No zap stanza required
end
