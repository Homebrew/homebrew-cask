cask 'expressions' do
  version '1.3.1'
  sha256 '1d8daf05089da36d9d95e107e2b20c69e65e3160b73ba1da848220aa1114de08'

  url "http://www.apptorium.com/public/products/expressions/releases/Expressions-#{version}.zip"
  name 'Expressions'
  homepage 'http://www.apptorium.com/expressions'

  app 'Expressions.app'

  zap trash: [
               '~/Library/Application Scripts/com.apptorium.Expressions-dm',
               '~/Library/Containers/com.apptorium.Expressions-dm',
             ]
end
