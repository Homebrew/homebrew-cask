cask 'jupyter-notebook-ql' do
  version '0.1'
  sha256 '42706eedadb56c1bbe739cef480ecc919028b2c60857dad97369577613bd67fa'

  url "https://github.com/jendas1/jupyter-notebook-quick-look/releases/download/#{version}/jupyter-notebook-quick-look.qlgenerator.zip"
  name 'Jupyter notebok Quick Look'
  homepage 'https://github.com/jendas1/jupyter-notebook-quick-look'
  license :public_domain

  qlplugin 'jupyter-notebook-quick-look.qlgenerator'

  caveats 'You need python 3 and the nbconvert module to use this plugin.'
end
