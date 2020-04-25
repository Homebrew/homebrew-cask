cask 'remember-the-milk' do
  version '1.1.20'
  sha256 'ab319267db20a6eaf6384c72a8f53fe27134ad4ddc1e2a96ceedc16942aba5d8'

  url "https://www.rememberthemilk.com/download/mac/RememberTheMilk-#{version}.zip"
  appcast 'https://www.rememberthemilk.com/services/mac/'
  name 'Remember The Milk'
  homepage 'https://www.rememberthemilk.com/'

  app 'Remember The Milk.app'
end
