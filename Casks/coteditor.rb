cask :v1 => 'coteditor' do
  if MacOS.release == :lion
    version '2.0.3'
    sha256 'b656aa0b6526c89d7d52cf12b715cf529f8e5048c7e13720673c3e32318a26d8'
  elsif MacOS.release >= :mountain_lion
    version '2.1.3'
    sha256 '2603504a15dc90e228a8758f1cc960b5e44658d6ac27e96046a91682b3d765b7'
  end

  # github.com is the official download host per the vendor homepage
  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'https://github.com/coteditor/CotEditor/releases.atom'
  name 'CotEditor'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
