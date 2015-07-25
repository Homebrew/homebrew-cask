cask :v1 => 'easyfig' do
  version '2.1.0'
  sha256 '470809860367a448cd931a2ed54caed116576f1cdf5795cba6ad1e8be186bec4'

  url 'https://github.com/mjsull/Easyfig/releases/download/2.1.0/Easyfig_mac_2.1.tar.gz'
  name 'EasyFig'
  homepage 'http://mjsull.github.io/Easyfig/'
  license :gpl
  # desc "Easy genome comparison figures"
  # doi "10.1093/bioinformatics/btr039"
  # tag "bioinformatics"

  app 'Easyfig_mac_2.1/Easyfig_mac_2.1.app', :target => 'EasyFig.app'
end
