cask "font-server-mono" do
  version "0.0.7"
  sha256 "695f201ee89614f5aa95ef37d0958fbcee877b7782fb1877717b164228eddf58"

  url "https://github.com/internet-development/www-server-mono/releases/download/v#{version}/ServerMono-fonts.zip",
      verified: "github.com/internet-development/www-server-mono/"
  name "Server Mono"
  homepage "https://servermono.com/"

  no_autobump! because: :requires_manual_review

  font "public/fonts/ServerMono-Regular.otf"
  font "public/fonts/ServerMono-RegularSlanted.otf"

  # No zap stanza required
end
