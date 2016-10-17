cask 'sharepod' do
  version :latest
  sha256 :no_check

  # cdn.macroplant.com/release/Sharepod-4.3.2.0.dmg was verified as official when first introduced to the cask
  url 'http://cdn.macroplant.com/release/Sharepod-4.3.2.0.dmg'
  name 'Sharepod'
  homepage 'https://www.getsharepod.com'

  app 'Sharepod.app'
end
