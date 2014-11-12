class Coteditor < Cask
  version '2.0.0'
  sha256 '70377acae52d5599d5adf7e0a56d0b3c7d5b82697a7fe3469da41b3fea2ae85c'

  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'http://coteditor.com/appcast.xml',
          :sha256 => 'd528282869a8a6c5c3b2cf5da6ad33eb6ad2d776f9a2aceaebbd11e62c2dd008'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
