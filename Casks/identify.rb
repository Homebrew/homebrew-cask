cask 'identify' do
  version '551'
  sha256 'b3691e56912882deb9d8021afa30643cc3e7dd9e4758d550a83649f491b9285a'

  # dl.dropbox.com/u/1495067 was verified as official when first introduced to the cask
  url "https://dl.dropbox.com/u/1495067/iDentifySparkle/iDentifyLite#{version}.zip"
  appcast 'https://dl.dropboxusercontent.com/u/1495067/iDentifySparkle/iDentifyAppcast.xml',
          checkpoint: '703a63799a0a8ed68a772bf9514779c45d02707690ac45fb4355a3fd666ddcba'
  name 'iDentify'
  homepage 'http://identify2.arrmihardies.com/'

  app 'iDentify.app'
end
