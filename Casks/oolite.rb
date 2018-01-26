cask 'oolite' do
  version '1.86'
  sha256 'bee8226c78fee15ae7c20180ca2587f2397bfa48e592339b1e59a1da0de91906'

  # github.com/OoliteProject/oolite was verified as official when first introduced to the cask
  url "https://github.com/OoliteProject/oolite/releases/download/#{version}/Oolite-#{version}.zip"
  appcast 'https://github.com/OoliteProject/oolite/releases.atom',
          checkpoint: 'c5d48ac5a3abc26df3333685ef890a61e51938a3f049472922d9e60a04551ad4'
  name 'oolite'
  homepage 'http://www.oolite.org/'

  app 'Oolite.app'
end
