cask :v1 => 'shortcat' do
  version '0.7.4'
  sha256 '2f637b6ca13d7ea7f2635d617045695125a5a0ad6c20e913e9ea148ff9bed242'

  url "https://files.shortcatapp.com/v#{version}/Shortcat.zip"
  appcast 'https://shortcatapp.com/updates/appcast.xml',
          :sha256 => '3cedb390a4cc871ccf6b279c711ba350bbc09cf4a710af65796bededa26530a7'
  homepage 'http://shortcatapp.com/'
  license :unknown

  app 'Shortcat.app'
end
