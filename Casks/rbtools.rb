cask :v1 => 'rbtools' do
  version '0.7.2'
  sha256 '78a0ee38431e07d16adce9ba06481295eb4d789bbb0975ec439fba59ee42b063'

  url "https://downloads.reviewboard.org/releases/RBTools/#{version.sub(%r{\.\d+$},'')}/RBTools-#{version}.pkg"
  name 'RBTools'
  homepage 'https://www.reviewboard.org/docs/rbtools/dev/'
  license :mit

  pkg "RBTools-#{version}.pkg"

  uninstall :pkgutil => 'org.reviewboard.rbtools'
end
