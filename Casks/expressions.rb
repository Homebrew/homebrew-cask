cask 'expressions' do
  version '1.2.2'
  sha256 '459b6b8e39cb167c3c36c435fcb5006bff5b4cf18646cf48e68d03e08eb73640'

  url "http://www.apptorium.com/products/expressions/releases/Expressions-#{version}.zip"
  name 'Expressions'
  homepage 'http://www.apptorium.com/products/expressions'

  app 'Expressions.app'

  zap trash: [
               '~/Library/Application Scripts/com.apptorium.Expressions-dm',
               '~/Library/Containers/com.apptorium.Expressions-dm',
             ]
end
