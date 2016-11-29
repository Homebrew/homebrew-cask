cask 'jgrasp' do
  version '2.0.2_01'
  sha256 '17961e4407f5a6182c2548ccdfde4ec6815af3643080a3e9db945f3e12b0c7cc'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'org.jgrasp.jgrasp.jgrasp.pkg'
end
