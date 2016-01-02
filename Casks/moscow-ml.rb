cask 'moscow-ml' do
  version '2.10.1'
  sha256 '4b3e2035b106c688e43e7d415ca74ca8970f74656cc2c17326c5fb7d1f948ca0'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/kfl/mosml/releases/download/ver-#{version}/mosml-#{version}.pkg"
  appcast 'https://github.com/kfl/mosml/releases.atom',
          :sha256 => 'cfcbf13e545b295cc08a59c5887b5727aa543f3e5dc341310923edf7e29fb788'
  name 'Moscow ML'
  homepage 'http://mosml.org/'
  license :gpl

  pkg "mosml-#{version}.pkg"

  uninstall :pkgutil => 'org.mosml'
end
