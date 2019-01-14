cask 'jgrasp' do
  version '2.0.5_04'
  sha256 'd7c825587a1017a7f2b235d61a0709402dae67743fcfb0cc076f7c11969d6087'

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'https://jgrasp.org/'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java '6+'
  end
end
