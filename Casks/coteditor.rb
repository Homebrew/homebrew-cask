cask :v1 => 'coteditor' do
  version '2.1.3'
  sha256 '2603504a15dc90e228a8758f1cc960b5e44658d6ac27e96046a91682b3d765b7'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'http://coteditor.com/appcast.xml',
          :sha256 => '32313f2ad01be20eb017894b128e4607a056a5584991b8ecd690c2c98b0b3e31'
  name 'CotEditor'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
