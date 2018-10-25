cask 'nozbe' do
  version '3.9.1'
  sha256 'ddf02226bdb49c57e46a3fbfef0682d7b92d22a5aabe82ad2e9e0142fe46918d'

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
