cask 'eintopf' do
  version '1.3.2'
  sha256 '49b0e1f6736e86326a307889147d29e51c0343c56cb538556265eb6e8084b456'

  # github.com/mazehall/eintopf was verified as official when first introduced to the cask
  url "https://github.com/mazehall/eintopf/releases/download/#{version}/eintopf_#{version}-x64.dmg"
  appcast 'https://github.com/mazehall/eintopf/releases.atom',
          checkpoint: 'a8c2ba60ed12b1cdf2a2054c4d06a93c8dd3d3712f3bdb74baab179b4cec2ab0'
  name 'Eintopf'
  homepage 'https://eintopf.io/'

  app 'Eintopf.app'
end
