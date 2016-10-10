cask 'medis' do
  version '0.3.0'
  sha256 'bbf189533a4fdd8454445fbd9d0abb7fb18f44fd6d0d064d0dfb32778e6974de'

  # github.com/luin/medis was verified as official when first introduced to the cask
  url "https://github.com/luin/medis/releases/download/v#{version}/medis-v#{version}-mac-x64.zip"
  appcast 'https://github.com/luin/medis/releases.atom',
          checkpoint: '206fef0808fa2ddef710f8e61e4cebce087266ce00568563693505af88df84e5'
  name 'Medis'
  homepage 'http://getmedis.com/'

  app 'Medis.app'
end
