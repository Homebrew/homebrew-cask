cask 'amadeus-pro' do
  version '2.7.3'
  sha256 '6a30ce5876e31b54bfe5c6395ea1f459d7d6ef7c71923210cd19eaa43b9a69ff'

  # s3.amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
