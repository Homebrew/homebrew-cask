cask 'rbtools' do
  version '0.7.9'
  sha256 '3eb805c9b91902802b055380ddcffc503f6e034d987a9b818d7c40b287b76741'

  url "https://downloads.reviewboard.org/releases/RBTools/#{version.major_minor}/RBTools-#{version}.pkg"
  appcast 'https://www.reviewboard.org/docs/releasenotes/rbtools/',
          checkpoint: 'c7386ff57deb321b44102fd8b26063846b0ce0095930b919977651f2569d0a7b'
  name 'RBTools'
  homepage 'https://www.reviewboard.org/docs/rbtools/0.7/'

  pkg "RBTools-#{version}.pkg"

  uninstall pkgutil: 'org.reviewboard.rbtools'
end
