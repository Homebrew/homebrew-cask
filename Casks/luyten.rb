cask 'luyten' do
  version '0.5.1'
  sha256 '7ed25aa4aac9a10096f02a1714784b82e1cd89ede51f8be01180e8d289717f4e'

  # github.com/deathmarine/Luyten was verified as official when first introduced to the cask
  url "https://github.com/deathmarine/Luyten/releases/download/v#{version}/luyten-OSX-#{version}.zip"
  appcast 'https://github.com/deathmarine/Luyten/releases.atom',
          checkpoint: 'aa7c30606bdf06807a76ba9c789268e689664151e83cddc4ef30921b83207d2a'
  name 'Luyten'
  homepage 'https://deathmarine.github.io/Luyten/'

  app 'Luyten.app'
end
