cask 'hedge' do
  version :latest
  sha256 :no_check

  # nl.syncfactory.Hedge.Mac was verified as official when first introduced to the cask
  url 'https://dl.devmate.com/nl.syncfactory.Hedge.Mac/HedgeforMac.zip'
  name 'Hedge'
  homepage 'https://hedge.video/'

  app 'Hedge.app'
end
