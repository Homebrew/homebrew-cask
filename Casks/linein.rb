cask 'linein' do
  version '2.3.0'
  sha256 '583ce553838779116d5b25f20a3855260a1e8580f9b55a134a58a24bfdf31c96'

  url 'https://www.rogueamoeba.com/freebies/download/LineIn.zip'
  appcast 'https://rogueamoeba.com/freebies/version-linein.rss',
          checkpoint: '212705064a7c63980fa1eb4ec1f1334212bf8e23a639b507c31b0d09b65d7db8'
  name 'LineIn'
  homepage 'https://www.rogueamoeba.com/freebies/'

  app 'LineIn.app'
end
