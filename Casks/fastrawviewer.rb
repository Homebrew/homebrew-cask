cask 'fastrawviewer' do
  version '1.5.3.1519'
  sha256 '13de302a1069136c89db652ae72e0823a8d61eb6d90fac8044c35d5bc64717ea'

  url "https://updates.fastrawviewer.com/data/FastRawViewer-#{version}.dmg"
  appcast 'https://www.fastrawviewer.com/download'
  name 'FastRawViewer'
  homepage 'https://www.fastrawviewer.com/'

  app 'FastRawViewer.app'
end
