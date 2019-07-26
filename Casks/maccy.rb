cask 'maccy' do
  version '0.3.7'
  sha256 '08e079ae2071bea7e1f011f47ba601b79d9440daa8e80aa5d3946d558a80ab43'

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://github.com/p0deje/Maccy'

  depends_on macos: '>= :mojave'

  app 'Maccy.app'
end
