cask 'dangerzone' do
  version '0.1.1'
  sha256 '5de17c9713940cce761562dec3c3e7ffba8b1dabde957aa17c8b8fe3193771b4'

  # github.com/firstlookmedia/dangerzone/ was verified as official when first introduced to the cask
  url "https://github.com/firstlookmedia/dangerzone/releases/download/v#{version}/Dangerzone.#{version}.dmg"
  appcast 'https://github.com/firstlookmedia/dangerzone/releases.atom'
  name 'Dangerzone'
  homepage 'https://dangerzone.rocks/'

  app 'Dangerzone.app'
end
