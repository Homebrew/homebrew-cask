cask "font-satoshi" do
  version "1.0"
  sha256 :no_check

  url "https://api.fontshare.com/v2/fonts/download/satoshi"
  name "Satoshi"
  homepage "https://www.fontshare.com/fonts/satoshi"

  livecheck do
    url "https://api.fontshare.com/v2/fonts/slug/satoshi"
    strategy :json do |json|
      json.dig("font", "version")
    end
  end

  font "Satoshi_Complete/Fonts/OTF/Satoshi-Black.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-BlackItalic.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-Bold.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-BoldItalic.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-Italic.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-Light.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-LightItalic.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-Medium.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-MediumItalic.otf"
  font "Satoshi_Complete/Fonts/OTF/Satoshi-Regular.otf"
  font "Satoshi_Complete/Fonts/TTF/Satoshi-Variable.ttf"
  font "Satoshi_Complete/Fonts/TTF/Satoshi-VariableItalic.ttf"

  # No zap stanza required
end
