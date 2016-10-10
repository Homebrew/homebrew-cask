cask 'rbtools' do
  version '0.7.5'
  sha256 'fd910542e24d067df3fe635e982ae5e3526a0036f79ff129c29cf66f02751bd6'

  url "https://downloads.reviewboard.org/releases/RBTools/#{version.sub(%r{\.\d+$}, '')}/RBTools-#{version}.pkg"
  name 'RBTools'
  homepage 'https://www.reviewboard.org/docs/rbtools/0.7/'

  pkg "RBTools-#{version}.pkg"

  uninstall pkgutil: 'org.reviewboard.rbtools'
end
