cask 'papers' do
  version '3.4.10,548'
  sha256 'cef4ecc8f0968b500db1fe1cd0d525a6912d8e3e9b5035d416fe77236ba74132'

  url "http://appcaster.papersapp.com/apps/mac/production/download/#{version.after_comma}/papers_#{version.before_comma.no_dots}_#{version.after_comma}.dmg"
  appcast 'https://appcaster.papersapp.com/apps/mac/production/appcast.xml',
          checkpoint: '211d6e5e84a12cb510842970d9e1ba096ad3206a3a3574b4ea266969f93fb9b0'
  name 'Papers'
  homepage 'https://papersapp.com/'

  app 'Papers.app'
end
