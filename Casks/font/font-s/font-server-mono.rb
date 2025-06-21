cask "font-server-mono" do
  version "0.0.8"
  sha256 "2f8f9cd371ba908dabce464960ab310a8522fdd99670c6c9fbd2f3988a378f9b"

  url "https://github.com/internet-development/www-server-mono/releases/download/v#{version}/ServerMono-fonts.zip",
      verified: "github.com/internet-development/www-server-mono/"
  name "Server Mono"
  homepage "https://servermono.com/"

  no_autobump! because: :requires_manual_review

  font "public/fonts/ServerMono-Regular.otf"
  font "public/fonts/ServerMono-RegularSlanted.otf"

  # No zap stanza required
end
