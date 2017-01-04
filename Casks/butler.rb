cask 'butler' do
  version '4.1.23'
  sha256 '7de67e08e0bcffbdf3c5a2af73f84654b7dc5db5e95d61e42e74d863eb3d06fc'

  url 'https://manytricks.com/download/butler'
  appcast 'https://manytricks.com/butler/butlercast.xml',
          checkpoint: '2ed9042374aac7064601c3b0576b9843979e6fe164fd260b2e4b43b15fc5595f'
  name 'Butler'
  homepage 'https://manytricks.com/butler/'

  auto_updates true

  app 'Butler.app'
end
