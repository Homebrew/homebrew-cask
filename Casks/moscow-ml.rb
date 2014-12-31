cask :v1 => 'moscow-ml' do
  version '2.10.1'
  sha256 '4b3e2035b106c688e43e7d415ca74ca8970f74656cc2c17326c5fb7d1f948ca0'

  url "https://github.com/kfl/mosml/releases/download/ver-#{version}/mosml-#{version}.pkg"
  homepage 'http://mosml.org/'
  license :gpl

  pkg "mosml-#{version}.pkg"

  uninstall :pkgutil => 'org.mosml'
end
