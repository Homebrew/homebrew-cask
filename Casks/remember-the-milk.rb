cask 'remember-the-milk' do
  version '1.1.17'
  sha256 '3d0e0b90145af9245ea185268017aaee6205225073ee5e7afe21f09849337260'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
