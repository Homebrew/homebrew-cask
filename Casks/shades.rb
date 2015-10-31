cask :v1 => 'shades' do
  version :latest
  sha256 :no_check

  url 'http://www.charcoaldesign.co.uk/shades/download/intel'
  name 'Shades'
  homepage 'http://www.charcoaldesign.co.uk/shades'
  license :gratis

  prefpane 'Shades Preferences.prefPane'
end
