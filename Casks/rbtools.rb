cask 'rbtools' do
  version '0.7.9'
  sha256 '3eb805c9b91902802b055380ddcffc503f6e034d987a9b818d7c40b287b76741'

  url "https://downloads.reviewboard.org/releases/RBTools/#{version.major_minor}/RBTools-#{version}.pkg"
  appcast 'https://www.reviewboard.org/docs/releasenotes/rbtools/',
          checkpoint: '4543ec8bd3e4da722dbb82a9a33dcaf52419a193e13d9d8117f1b001223cc044'
  name 'RBTools'
  homepage 'https://www.reviewboard.org/docs/rbtools/0.7/'

  pkg "RBTools-#{version}.pkg"

  uninstall pkgutil: 'org.reviewboard.rbtools'
end
