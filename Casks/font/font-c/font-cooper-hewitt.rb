cask "font-cooper-hewitt" do
  version :latest
  sha256 :no_check

  url "https://www.cooperhewitt.org/wp-content/uploads/fonts/CooperHewitt-OTF-public.zip"
  name "Cooper Hewitt"
  homepage "https://www.cooperhewitt.org/open-source-at-cooper-hewitt/cooper-hewitt-the-typeface-by-chester-jenkins/"

  font "CooperHewitt-OTF-public/CooperHewitt-Bold.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-BoldItalic.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-Book.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-BookItalic.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-Heavy.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-HeavyItalic.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-Light.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-LightItalic.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-Medium.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-MediumItalic.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-Semibold.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-SemiboldItalic.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-Thin.otf"
  font "CooperHewitt-OTF-public/CooperHewitt-ThinItalic.otf"

  # No zap stanza required
end
