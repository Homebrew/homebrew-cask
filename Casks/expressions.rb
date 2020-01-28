cask 'expressions' do
  version '1.3.3'
  sha256 'aea490ec0aef97247dfe3b032519bcda1f5df02486318fde509b63ec789bb0d0'

  url "https://www.apptorium.com/public/products/expressions/releases/Expressions-#{version}.zip"
  appcast 'https://updates.devmate.com/com.apptorium.Expressions-dm.xml'
  name 'Expressions'
  homepage 'https://www.apptorium.com/expressions'

  app 'Expressions.app'

  zap trash: [
               '~/Library/Application Scripts/com.apptorium.Expressions-dm',
               '~/Library/Containers/com.apptorium.Expressions-dm',
             ]
end
