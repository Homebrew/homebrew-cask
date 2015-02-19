cask :v1 => 'purescript' do
  version '0.6.7.1'
  sha256 '045eec78bc24bea1141107d78121fdfbbdbb4aa5157e3b444a53077c9cd38b52'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/purescript/purescript/releases/download/v#{version}/macos.tar.gz"
  name 'PureScript'
  homepage 'http://purescript.org'
  license :mit

  binary 'purescript/psc'
  binary 'purescript/psc-docs'
  binary 'purescript/psc-make'
  binary 'purescript/psci'
end
