cask 'nteract' do
  version '0.10.0'
  sha256 '2fbb06610d26de191f7631dc56fd04705242a2f9f9940b0d57d81da4d1530613'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
