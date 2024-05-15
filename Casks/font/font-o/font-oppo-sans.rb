cask "font-oppo-sans" do
  version :latest
  sha256 :no_check

  url "https://static01.coloros.com/www/public/img/topic7/font-opposans.zip"
  name "OPPO Sans"
  homepage "https://www.coloros.com/index/newsDetail?id=72"

  font "3.0 Designer_分级/OPlusSans3-ExtraLight.ttf"
  font "3.0 Designer_分级/OPlusSans3-Light.ttf"
  font "3.0 Designer_分级/OPlusSans3-Regular.ttf"
  font "3.0 Designer_分级/OPlusSans3-Medium.ttf"
  font "3.0 Designer_分级/OPlusSans3-Bold.ttf"

  # No zap stanza required
end
