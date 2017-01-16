cask 'isubtitle' do
  version '3.0.2'
  sha256 '77c3d7762e91e2b81eb702ab2a59ee0f372bfe77e419c24f2fb6566ce68946f4'

  url "http://www.bitfield.se/isubtitle#{version.major}/download/iSubtitle_#{version}.zip"
  appcast "http://www.bitfield.se/isubtitle#{version.major}/changelog.xml",
          checkpoint: 'ef6080d7af2993417d9a793965feba25ef0d0d1cdfcd4d67e42dd60d3e97f84a'
  name 'iSubtitle'
  homepage 'http://www.bitfield.se/isubtitle/'

  app 'iSubtitle.app'
end
