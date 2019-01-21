cask 'gray' do
  version '0.9.12'
  sha256 'bba15cb46ba5aa73519f074f786098568317df766da1cf08b48c1ee59fe5667a'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
