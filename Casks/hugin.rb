cask 'hugin' do
  version '2019.0.0'
  sha256 'dced75dab3723631fbe794fa79535c90c05e39f1c6d481763dacb6c898efd61b'

  # downloads.sourceforge.net/hugin was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/hugin/Hugin-#{version}.dmg"
  appcast 'https://sourceforge.net/projects/hugin/rss'
  name 'Hugin'
  homepage 'https://hugin.sourceforge.io/'

  suite 'Hugin'
end
