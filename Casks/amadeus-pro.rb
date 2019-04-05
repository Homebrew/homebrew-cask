cask 'amadeus-pro' do
  version '2.5.3'
  sha256 'a994e2db0a2f42a28afc289cdf55696fbb31132b9d23aab4e2abc667d3f493b2'

  # amazonaws.com/AmadeusPro2 was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://s3.amazonaws.com/AmadeusPro2/versions.rtf'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
