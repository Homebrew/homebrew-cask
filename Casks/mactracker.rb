cask 'mactracker' do
  version '7.5.1'
  sha256 '8f87d3bbf37ecaf4689bc6eab85222afce5b45766e226bec3030181ae31406d2'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          :sha256 => 'c61895d7f16ce23c6c0a3369e462aef18073143145cc8a7e00beaff1f54fa084'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
