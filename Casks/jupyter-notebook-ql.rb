cask :v1 => 'jupyter-notebook-ql' do
  version '0.1'
  sha256 '42706eedadb56c1bbe739cef480ecc919028b2c60857dad97369577613bd67fa'

  url "https://github.com/jendas1/jupyter-notebook-quick-look/releases/download/#{version}/jupyter-notebook-quick-look.qlgenerator.zip"
  name 'Jupyter notebok Quick Look'
  homepage 'https://github.com/jendas1/jupyter-notebook-quick-look'
  license :public_domain

  qlplugin 'jupyter-notebook-quick-look.qlgenerator'

  caveats <<-EOS.undent
  This plugin uses python 3 nbconvert module.
  Make sure that nbconvert and python 3 is installed.
  If not, do it.
  For python3:
    brew install python3
  For nbconvert
    pip3 instal nbconvert
  EOS
end
