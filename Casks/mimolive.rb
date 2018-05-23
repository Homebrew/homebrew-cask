cask 'mimolive' do
  version '4.0.3-24873'
  sha256 'c5cbfb91bc3dc9554a952feed0a1596c0bd0479e2f8142dc77b8e4a46e067de5'

  url "https://cdn.boinx.com/software/mimolive/Boinx_mimoLive_#{version}.app.zip"
  appcast 'https://boinx.com/d/connect/histories/mimolive',
          checkpoint: '609b33258f108282ae38fcac40662c0fbc09eca0f0b38df2a5181b002d505fbe'
  name 'mimoLive'
  homepage 'https://boinx.com/mimolive/'

  depends_on macos: '>= :el_capitan'

  app 'mimoLive.app'
end
