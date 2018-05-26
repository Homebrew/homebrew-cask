cask 'pyfa' do
  version '2.0.2,yc120.3-1.8'
  sha256 '173fa033b785c034b589d7a612b9c67d5345d775de8696a0447b31951e1c05aa'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: '61e6f7dde48a774394ce3531d3ded5ae17420e770e1557cb5628a4be0b6d2529'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
