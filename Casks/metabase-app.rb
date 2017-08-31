cask 'metabase-app' do
  version '0.25.2.0'
  sha256 'fbc31267d3e06ff441f442ae7e6059f6d8c23a624c8784ec3c46c429de105148'

  url "http://downloads.metabase.com/v#{version.major_minor_patch}/Metabase.dmg"
  appcast 'http://downloads.metabase.com/appcast.xml',
          checkpoint: '997b7868639e988e4d94fe3be1e0068f6f3b461b9327824389ce44e97535b1bb'
  name 'Metabase'
  homepage 'http://www.metabase.com/'

  app 'Metabase.app'
end
