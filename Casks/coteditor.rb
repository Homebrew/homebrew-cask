class Coteditor < Cask
  version '1.5.4'
  sha256 '444133083698c7c94c2b029644f39a0e36982ae34c24745789fa890626188347'

  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'http://coteditor.github.io/appcast.xml'
  homepage 'http://coteditor.github.io/'

  link 'CotEditor.app'
end
