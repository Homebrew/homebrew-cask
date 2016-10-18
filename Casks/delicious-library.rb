cask 'delicious-library' do
  version '3.6'
  sha256 'dc672eb8087267caedb5e99d94a3c3c41a8256eff42ba3ac43d1e4f2c9395789'

  url "https://delicious-monster.com/downloads/DeliciousLibrary#{version.major}/v#{version}/DeliciousLibrary#{version.major}.zip"
  appcast 'https://www.delicious-monster.com/downloads/DeliciousLibrary3.xml',
          checkpoint: '23e6fdb006a046913b7843b89b023154dafb20912459598313c2b38bdd19fa95'
  name 'Delicious Library'
  homepage 'https://delicious-monster.com/'

  app "Delicious Library #{version.major}.app"
end
