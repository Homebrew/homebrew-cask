cask "karafun" do
  version "2.2.0.86"
  sha256 :no_check

  url "https://www.karafun.com/download/mac.html"
  name "KaraFun"
  desc "Karaoke player software"
  homepage "https://www.karafun.com/"

  app "KaraFun.app"

  # No zap stanza required
end
