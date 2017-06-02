cask 'rbtools' do
  version '0.7.10'
  sha256 '7c18e84fcd6f9059a43bfbbc259c146e059bdfe2e87a49ada1ce29c040d27ee2'

  url "https://downloads.reviewboard.org/releases/RBTools/#{version.major_minor}/RBTools-#{version}.pkg"
  appcast 'https://www.reviewboard.org/docs/releasenotes/rbtools/',
          checkpoint: '0f0603b6d03ef13b35e26b310eb23dc90ee336483fff0334dd88c47b7697c149'
  name 'RBTools'
  homepage 'https://www.reviewboard.org/docs/rbtools/0.7/'

  pkg "RBTools-#{version}.pkg"

  uninstall pkgutil: 'org.reviewboard.rbtools'
end
