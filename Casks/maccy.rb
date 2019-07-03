cask 'maccy' do
  version '0.3.6'
  sha256 '314d56cddd34a89443af3995b1a3ddbc63a8d18db12b043309b76ded260c5d83'

  url "https://github.com/p0deje/Maccy/releases/download/#{version}/Maccy.app.zip"
  appcast 'https://github.com/p0deje/Maccy/releases.atom'
  name 'Maccy'
  homepage 'https://github.com/p0deje/Maccy'

  app 'Maccy.app'
end
