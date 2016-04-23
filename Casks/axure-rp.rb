cask 'axure-rp' do
  version :latest
  sha256 :no_check

  url 'https://maxure.s3.amazonaws.com/AxureRP-Setup.dmg'
  name 'Axure RP'
  homepage 'https://www.axure.com/'
  license :commercial

  app 'Axure RP 8.app'
end
