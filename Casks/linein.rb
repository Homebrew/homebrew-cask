cask :v1 => 'linein' do
  version :latest
  sha256 :no_check

  url 'https://www.rogueamoeba.com/freebies/download/LineIn.zip'
  name 'LineIn'
  appcast 'https://rogueamoeba.com/freebies/version-linein.rss',
          :sha256 => '212705064a7c63980fa1eb4ec1f1334212bf8e23a639b507c31b0d09b65d7db8'
  homepage 'https://www.rogueamoeba.com/freebies/'
  license :gratis

  app 'LineIn.app'
end
