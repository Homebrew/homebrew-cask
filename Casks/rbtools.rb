cask :v1 => 'rbtools' do
  version '0.7.1'
  sha256 '6e2ffc0ea6d095f45662a51d03a9cf8e088c4dbca25e8ca261de2a1388fe53b0'

  url "https://downloads.reviewboard.org/releases/RBTools/#{version.sub(%r{\.\d+$},'')}/RBTools-#{version}.pkg"
  name 'RBTools'
  homepage 'https://www.reviewboard.org/docs/rbtools/dev/'
  license :mit

  pkg "RBTools-#{version}.pkg"
  uninstall :pkgutil => 'org.reviewboard.rbtools'
end
