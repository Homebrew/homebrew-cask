cask 'jgrasp' do
  version '2.0.1_09'
  sha256 '3b16bcc366a06d0a7765801814e02bd94837ee5e2e141ad0d5855ae4bd5b04ba'

  url "http://www.jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'http://jgrasp.org/index.html'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'org.jgrasp.jgrasp.jgrasp.pkg'
end
