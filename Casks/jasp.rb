cask 'jasp' do
  version '0.7.5.6'
  sha256 'd019f1699c5d185b5e367281e297ed55e11b0ffdf4770d8f455efc735f48060e'

  url 'http://static.jasp-stats.org/JASP-0.7.5.6.dmg'
  name 'JASP'
  homepage 'https://jasp-stats.org'
  license :gpl

  app 'JASP.app'
end
