cask 'jupyter-notebook-ql' do
  version '0.1'
  sha256 '42706eedadb56c1bbe739cef480ecc919028b2c60857dad97369577613bd67fa'

  url "https://github.com/jendas1/jupyter-notebook-quick-look/releases/download/#{version}/jupyter-notebook-quick-look.qlgenerator.zip"
  appcast 'https://github.com/inloop/qlplayground/releases.atom',
          checkpoint: 'c9b454cfabeefcd059af9305776b24430c0b16bf0c2001dba70eaf57227e332a'
  name 'Jupyter notebok Quick Look'
  homepage 'https://github.com/jendas1/jupyter-notebook-quick-look'

  qlplugin 'jupyter-notebook-quick-look.qlgenerator'

  caveats 'You need python 3 and the nbconvert module to use this plugin.'
end
