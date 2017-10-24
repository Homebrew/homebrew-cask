cask 'koala' do
  version '2.2.0'
  sha256 '3c8f0358a347b51c7efc7f8437888caaac0091bcfbd4f5bd6deed92e8c7cabf1'

  # github.com/oklai/koala was verified as official when first introduced to the cask
  url "https://github.com/oklai/koala/releases/download/v#{version}/Koala.dmg"
  name 'Koala'
  homepage 'http://koala-app.com/'

  app 'Koala.app'
end
