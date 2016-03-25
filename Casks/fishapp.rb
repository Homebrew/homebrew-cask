cask 'fishapp' do
  version '2.1.1'
  sha256 '92af7a82e6f46b35867ca160e42ca55a65eb86404bff47b8db489952dab488fc'

  url "http://fishshell.com/files/#{version}/fish.app.zip"
  name 'Fish App'
  homepage 'http://fishshell.com'
  license :gpl

  app 'fish.app'
end
