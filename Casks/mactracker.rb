cask 'mactracker' do
  version '7.7.2'
  sha256 'b65574c132a37ae39a73da82389c331b710f8de86b04a82ac8e81f29c93248ce'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: 'e91ffd375bcd24515fe4adaa07d3bdab87fa23d061825bbc19aa45aeb98de280'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
