cask 'open-rdar' do
  version '1.0.1'
  sha256 'c49643b418cde6bc74e5415bc831ed7b73549c63bbe72f120f430eeb07af7fbd'

  url "https://github.com/kolpanic/Open-rdar/releases/download/#{version}/Open.rdar.zip"
  appcast 'https://github.com/kolpanic/Open-rdar/releases.atom',
          checkpoint: '24a155cb2fba79adb278eac40e859cfa958f0d01fade851c18ab61f565f1a280'
  name 'Open rdar'
  homepage 'https://github.com/kolpanic/Open-rdar'

  app 'Open rdar.app'
end
