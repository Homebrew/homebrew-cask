cask 'amadeus-pro' do
  version '2.8.4'
  sha256 '5355ec8eaccaa85d30ec03d9db0804ed4dc21878e71e28a93ff0f8eafe717226'

  # s3.amazonaws.com/AmadeusPro2/ was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/AmadeusPro2/AmadeusPro.zip'
  appcast 'https://www.hairersoft.com/pro.html'
  name 'Amadeus Pro'
  homepage 'https://www.hairersoft.com/pro.html'

  app 'Amadeus Pro.app'
end
