cask 'nozbe' do
  version '3.8.1'
  sha256 'b676843813dc68c327244a9af1ab03e26c028c900033c659c18e5412bc15b575'

  url "https://files.nozbe.com/#{version.no_dots}/release/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
