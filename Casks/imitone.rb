cask 'imitone' do
  version '0.8.2'
  sha256 'b3604a2e64736a2b9fb884cc4633c67898c01d8f216809192d371f46d430164a'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
