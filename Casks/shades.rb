cask :v1 => 'shades' do
  version :latest
  sha256 :no_check

  url 'http://www.charcoaldesign.co.uk/shades/download/intel'
  homepage 'http://www.charcoaldesign.co.uk/shades'
  license :unknown

  prefpane 'Shades Preferences.prefPane'
end
