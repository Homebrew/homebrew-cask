cask 'imitone' do
  version '0.9.2b'
  sha256 '0b9f2dedd3ed4a67104af5c0796c62b783fdac74e5769298ee6604871f06b42c'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/',
          checkpoint: '173244da51ea51254f951208d13ad49cca06fcb1867496ada593f1205dc3189c'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
