cask 'filemaker-advanced' do
  version '17.0.1.143'
  sha256 'e8553da6c6eaca569e87b0188b7c0bb6eab64dbc874c8c151768c6bf96c2470e'

  url "http://fmdl.filemaker.com/TBUB/#{version.major}/fmpa_#{version}.dmg"
  name 'FileMaker Pro Advanced'
  homepage 'http://www.filemaker.com'

  auto_updates true

  app 'FileMaker Pro Advanced.app'
end
