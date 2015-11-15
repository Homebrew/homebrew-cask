cask :v1 => 'pandoc' do
  version '1.15.1'
  sha256 '63cf9bfa58135e523735bc9bc7bf4e135422a7a0f390dc36e5db819022e492ac'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/jgm/pandoc/releases/download/#{version}/pandoc-#{version}-osx.pkg"
  appcast 'https://github.com/jgm/pandoc/releases.atom'
  name 'Pandoc'
  homepage 'http://johnmacfarlane.net/pandoc'
  license :gpl

  pkg "pandoc-#{version}-osx.pkg"

  uninstall :pkgutil => 'net.johnmacfarlane.pandoc'

  conflicts_with :formula => 'pandoc'
end
