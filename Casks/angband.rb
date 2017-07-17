cask 'angband' do
  version '4.1.0'
  sha256 '3d4be91d4cacbec9bff959baefccb6ffdbb726fe5688f7b653a60623ab1b9595'

  url "http://rephial.org/downloads/#{version.major_minor}/Angband-#{version}-osx.dmg"
  appcast 'http://rephial.org/release/',
          checkpoint: '9738caaca45468753fd5249b0c87e277774a51a8a457797db5fb1eea9177d2dc'
  name 'Angband'
  homepage 'http://rephial.org/'

  app 'Angband.app'
end
