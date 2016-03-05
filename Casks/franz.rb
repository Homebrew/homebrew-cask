cask 'franz' do
  version :latest
  sha256 :no_check

  # www.dropbox.com/s/daepg6hdvaavfgv was verified as official when first introduced to the cask
  url 'https://www.dropbox.com/s/daepg6hdvaavfgv/Franz.dmg?dl=1'
  name 'Franz'
  homepage 'http://meetfranz.com'
  license :gratis

  app 'Franz.app'
end
