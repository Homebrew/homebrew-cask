cask 'gray' do
  version '0.14.0'
  sha256 '215a1ae6e98dc0db6cdbb4378b9cb2e03f51e42d155eae878f195fcccf549fa9'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
