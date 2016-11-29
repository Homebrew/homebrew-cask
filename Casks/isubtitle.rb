cask 'isubtitle' do
  version '3.0'
  sha256 'cbf9217ed1f84c15579acd569d2969196b8b0f3513f826b75469b24132f9bf77'

  url "http://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "http://www.bitfield.se/isubtitle#{version.major}/changelog.xml",
          checkpoint: '84e3a37cb824f2d5bb5a45ff90a3d75126f1ddd8d60052496dbeb23a81aee9d5'
  name 'iSubtitle'
  homepage 'http://www.bitfield.se/isubtitle/'

  app 'iSubtitle.app'
end
