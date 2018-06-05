cask 'mactracker' do
  version '7.7.4'
  sha256 'c387757a8efc3df785ecaf6967a8394cdae319d270a06523ee3f50d67088a746'

  url "https://www.mactracker.ca/downloads/Mactracker_#{version}.zip"
  appcast 'https://update.mactracker.ca/appcast-b.xml',
          checkpoint: '927be17abf74afb78b9027cc164a75fea72f4aa373ca723f8490753225d1aff8'
  name 'Mactracker'
  homepage 'https://mactracker.ca/'

  app 'Mactracker.app'
end
