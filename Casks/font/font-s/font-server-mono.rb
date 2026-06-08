cask "font-server-mono" do
  version "0.1.0"
  sha256 "8434a24aafaa6e78ae23a0f9e906bb44585012ccd3010843003c6e7290c8e5ae"

  url "https://github.com/internet-development/www-server-mono/releases/download/v#{version}/ServerMono-fonts.zip",
      verified: "github.com/internet-development/www-server-mono/"
  name "Server Mono"
  homepage "https://servermono.com/"

  font "public/fonts/ServerMono-Regular.otf"
  font "public/fonts/ServerMono-RegularOblique.otf"

  # No zap stanza required
end
