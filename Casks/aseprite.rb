cask 'aseprite' do
  version '1.1.10'
  sha256 'b1e25a66b7c23e0a07010bc1189d245144a631c80108a3c86621a27285c720df'

  url "http://www.aseprite.org/downloads/Aseprite-v#{version}-trial-MacOSX.dmg"
  appcast 'https://github.com/aseprite/aseprite/releases.atom',
          checkpoint: '4cf61fa2020f22b5eb6ee6bccd46fc82d5aff8a88963b593dfab5c1565845b57'
  name 'Aseprite'
  homepage 'https://www.aseprite.org/'

  app 'Aseprite.app'
end
