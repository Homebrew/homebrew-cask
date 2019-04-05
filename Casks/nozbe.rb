cask 'nozbe' do
  version '3.9.3'
  sha256 'ae5400dc2cb06daa08e13bdf83c4fcfa5e5e93abb2bbec69904ddb7f734db504'

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
