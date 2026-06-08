cask "font-ostrich-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/theleagueof/ostrich-sans/archive/refs/heads/master.tar.gz",
      verified: "github.com/theleagueof/ostrich-sans/"
  name "Ostrich Sans"
  homepage "https://www.theleagueofmoveabletype.com/ostrich-sans"

  font "ostrich-sans-master/OstrichSans-Black.otf"
  font "ostrich-sans-master/OstrichSans-Bold.otf"
  font "ostrich-sans-master/OstrichSans-Heavy.otf"
  font "ostrich-sans-master/OstrichSans-Light.otf"
  font "ostrich-sans-master/OstrichSans-Medium.otf"
  font "ostrich-sans-master/OstrichSansDashed-Medium.otf"
  font "ostrich-sans-master/OstrichSansInline-Italic.otf"
  font "ostrich-sans-master/OstrichSansInline-Regular.otf"
  font "ostrich-sans-master/OstrichSansRounded-Medium.otf"

  # No zap stanza required
end
