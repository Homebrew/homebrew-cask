cask 'sococo' do
  version '6.5.8,12-09-2019'
  sha256 'e235a6a98c8a83eaa3e379c01eee51370f643846f6a8a594ad91f7a182c7eeec'

  url "https://s.sococo.com/rs/client/mac/#{version.after_comma}-SococoProd.dmg"
  appcast 'https://app.sococo.com/app/app.min.js',
          configuration: version.after_comma
  name 'Sococo'
  homepage 'https://www.sococo.com/'

  app 'Sococo.app'
end
