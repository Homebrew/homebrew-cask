cask 'koala' do
  version '2.2.0'
  sha256 '3c8f0358a347b51c7efc7f8437888caaac0091bcfbd4f5bd6deed92e8c7cabf1'

  # github.com/oklai/koala was verified as official when first introduced to the cask
  url "https://github.com/oklai/koala/releases/download/v#{version}/Koala.dmg"
  appcast 'https://github.com/oklai/koala/releases.atom',
          checkpoint: '081f97357bc5ec3522d6403d7808828f4daf73ad7a511243c381b5e0e0260d90'
  name 'Koala'
  homepage 'http://koala-app.com/'

  app 'Koala.app'
end
