cask 'gray' do
  version '0.10.1'
  sha256 'dfd095769a5e5221d9eda1fe8d1f09c22672c1f13750932b5e04a06a06177c4a'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
