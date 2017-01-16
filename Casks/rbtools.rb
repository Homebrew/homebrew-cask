cask 'rbtools' do
  version '0.7.7'
  sha256 '9f349490d82ce62c373c639437b14f81b40a36e6f06c7ec3c3154bc388d9defb'

  url "https://downloads.reviewboard.org/releases/RBTools/#{version.major_minor}/RBTools-#{version}.pkg"
  appcast 'https://www.reviewboard.org/docs/releasenotes/rbtools/',
          checkpoint: '8c04b3f5824596f4882606e02321e76d50646b606529ecec7ff671ea45d1e651'
  name 'RBTools'
  homepage 'https://www.reviewboard.org/docs/rbtools/0.7/'

  pkg "RBTools-#{version}.pkg"

  uninstall pkgutil: 'org.reviewboard.rbtools'
end
