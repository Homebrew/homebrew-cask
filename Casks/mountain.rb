cask 'mountain' do
  version '1.6.5'
  sha256 '86140c5469683ed64e9f275240e4e5e157b4b84b39aed65157e412e287c2c9dc'

  url 'https://appgineers.de/mountain/files/Mountain.zip'
  appcast 'https://appgineers.de/mountain/files/mountaincast.xml',
          checkpoint: 'bdd14156f57d031ffce89ff013e7b8811e8931bde3333f1c29695549a7376435'
  name 'Mountain'
  homepage 'https://appgineers.de/mountain/'

  app 'Mountain.app'
end
