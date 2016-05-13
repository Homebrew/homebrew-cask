cask 'mactracker' do
  version '7.5.5'
  sha256 '9eabc8dcc9eb86bed6ddf9b6d3867b69a5fb5fc57c5111b741ec7f98f7019731'

  url "http://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'http://update.mactracker.ca/appcast-b.xml',
          checkpoint: 'ca0c3fae4628bfa2ea2dea2f685bd67c70638eb0214dfd1e3735753a0034aea0'
  name 'Mactracker'
  homepage 'http://mactracker.ca/'
  license :gratis

  app 'Mactracker.app'
end
