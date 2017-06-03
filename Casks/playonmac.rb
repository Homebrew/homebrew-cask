cask 'playonmac' do
  version '4.2.11'
  sha256 '489e6806b2952cad193abd4918ce597c27b105ffe645d044219c766862193d64'

  url "http://repository.playonmac.com/PlayOnMac/PlayOnMac_#{version}.dmg"
  appcast "https://github.com/PlayOnLinux/POL-POM-#{version.major}/releases.atom",
          checkpoint: 'a4859d74522483388025f71b5bb45ea53ca9f6a5892163a92fa7168c010e7fd9'
  name 'PlayOnMac'
  homepage 'https://www.playonmac.com/en'

  app 'PlayOnMac.app'
end
