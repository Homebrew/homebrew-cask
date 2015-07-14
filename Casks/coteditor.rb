cask :v1 => 'coteditor' do
  if MacOS.release == :lion
    version '2.0.3'
    sha256 'b656aa0b6526c89d7d52cf12b715cf529f8e5048c7e13720673c3e32318a26d8'
  elsif MacOS.release >= :mountain_lion
    version '2.1.5'
    sha256 'be9ffd9a150e4008ec4d99b1e9603be075f0a6edd6a3dfa73cc3f13964bbd425'
  end

  # github.com is the official download host per the vendor homepage
  url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  appcast 'https://github.com/coteditor/CotEditor/releases.atom'
  name 'CotEditor'
  homepage 'http://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
