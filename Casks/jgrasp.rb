cask 'jgrasp' do
  version '2.0.6_02'
  sha256 '7832dc6796fcceb40d62c68fe97dfd6038bac95c521aa6fabd8c2948a6559ee2'

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  appcast 'https://jgrasp.org/'
  name 'jgrasp'
  homepage 'https://jgrasp.org/'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java '6+'
  end
end
