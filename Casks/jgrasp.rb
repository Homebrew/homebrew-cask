cask 'jgrasp' do
  version '2.0.5_03'
  sha256 '4a1fd7ca11b190279582189727ee79ef9fc29bd7c3692aba4a58e60df8c7a23f'

  url "https://jgrasp.org/dl4g/jgrasp/jgrasp#{version.no_dots}.pkg"
  name 'jgrasp'
  homepage 'https://jgrasp.org/'

  pkg "jgrasp#{version.no_dots}.pkg"

  uninstall pkgutil: 'jgrasp'

  caveats do
    depends_on_java '6+'
  end
end
