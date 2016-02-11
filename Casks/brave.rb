cask 'brave' do
  version '0.7.13dev'
  sha256 'df6c7500e6d67ec83aea11cf2955f590e8cad88abb4cc42779156e57a489150e'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '54303cbe73ff4c36f9e7d0ffc15c560659375319a0ec4d3d50bf0042aba7ae6f'
  name 'Brave'
  homepage 'http://brave.com'
  license :mpl

  app 'Brave.app'
end
