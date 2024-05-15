cask "font-balsamiq-sans" do
  version :latest
  sha256 :no_check

  url "https://github.com/balsamiq/balsamiqsans/archive/master.zip",
      verified: "github.com/balsamiq/balsamiqsans/"
  name "Balsamiq Sans"
  homepage "https://balsamiq.com/givingback/opensource/font/"

  font "balsamiqsans-master/fonts/ttf/BalsamiqSans-Bold.ttf"
  font "balsamiqsans-master/fonts/ttf/BalsamiqSans-BoldItalic.ttf"
  font "balsamiqsans-master/fonts/ttf/BalsamiqSans-Italic.ttf"
  font "balsamiqsans-master/fonts/ttf/BalsamiqSans-Regular.ttf"

  # No zap stanza required
end
