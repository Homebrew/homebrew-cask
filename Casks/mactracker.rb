cask 'mactracker' do
  version '7.6.4'
  sha256 'e7a08f03309195ca3634e8cb53cdff8ce8cbd93818eb1e030121c1c4131a9d45'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: 'f43563a4c621a4623ba43ddb92ab41a3eaffe5942a52fe076e0fed308e1e84ad'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
