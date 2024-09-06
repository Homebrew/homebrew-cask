cask "font-poppins-latin" do
  version "5.001"
  sha256 "cd4bdded93013fc9f123485b8fbc6113f62a7ff77492cc97cba6901cf6493738"

  url "https://github.com/itfoundry/Poppins/raw/master/products/PoppinsLatin-#{version}-Latin-OTF.zip"
  name "PoppinsLatin"
  homepage "https://github.com/itfoundry/poppins"

  livecheck do
    url "https://github.com/itfoundry/Poppins/tree/master/products"
    regex(/href=.*?PoppinsLatin[._-]v?(\d+(?:\.\d+)+)(?:[._-]Latin)?[._-]OTF\.zip/i)
    strategy :page_match
  end

  font "PoppinsLatin-Black.otf"
  font "PoppinsLatin-BlackItalic.otf"
  font "PoppinsLatin-Bold.otf"
  font "PoppinsLatin-BoldItalic.otf"
  font "PoppinsLatin-ExtraBold.otf"
  font "PoppinsLatin-ExtraBoldItalic.otf"
  font "PoppinsLatin-ExtraLight.otf"
  font "PoppinsLatin-ExtraLightItalic.otf"
  font "PoppinsLatin-Italic.otf"
  font "PoppinsLatin-Light.otf"
  font "PoppinsLatin-LightItalic.otf"
  font "PoppinsLatin-Medium.otf"
  font "PoppinsLatin-MediumItalic.otf"
  font "PoppinsLatin-Regular.otf"
  font "PoppinsLatin-SemiBold.otf"
  font "PoppinsLatin-SemiBoldItalic.otf"
  font "PoppinsLatin-Thin.otf"
  font "PoppinsLatin-ThinItalic.otf"

  # No zap stanza required
end
