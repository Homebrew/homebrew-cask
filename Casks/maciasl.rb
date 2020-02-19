cask 'maciasl' do
  version '1.5.7'
  sha256 'ee99590b7e8821fe61f13245d404f98cf36cfedd52e09f293d67b1f76cac03ca'

  url "https://github.com/acidanthera/MaciASL/releases/download/#{version}/MaciASL-#{version}-RELEASE.zip"
  appcast 'https://github.com/acidanthera/MaciASL/releases.atom'
  name 'MaciASL'
  homepage 'https://github.com/acidanthera/MaciASL'

  app 'MaciASL.app'
  binary "#{appdir}/MaciASL.app/Contents/MacOS/iasl-stable", target: 'iasl'
end
