cask 'maccy' do
  version :latest
  sha256 :no_check

  url 'https://github.com/p0deje/Maccy/releases/latest/download/Maccy.app.zip'
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://github.com/p0deje/Maccy'

  depends_on macos: '>= :mojave'

  app 'Maccy.app'
end
