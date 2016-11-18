cask 'coteditor' do
  if MacOS.version <= :snow_leopard
    version '1.3.1'
    sha256 '5c871bd9de30fc3c76fc66acb4ea258d4d3762ae341181d65a7ef1f8de4751c5'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}_For10.4.dmg"
  elsif MacOS.version <= :lion
    version '1.5.4'
    sha256 '444133083698c7c94c2b029644f39a0e36982ae34c24745789fa890626188347'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  elsif MacOS.version <= :mavericks
    version '2.5.7'
    sha256 'f2c6eed9bfa31999f559396642e7bec0eb90ce0e3398f266fed8b3db5bdab37c'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  else
    version '3.1.1'
    sha256 'b3f7d23081b04dc2b9837d5049bfbcca610fefb3e06e4c6125168e714edeecc8'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  end

  appcast 'https://github.com/coteditor/CotEditor/releases.atom',
          checkpoint: 'c6e0f63280e8c0326597b18a37b976db22437a5430450a179fae50e1b6441c8c'
  name 'CotEditor'
  homepage 'https://coteditor.com/'

  app 'CotEditor.app'
  binary "#{appdir}/CotEditor.app/Contents/SharedSupport/bin/cot", target: 'cot'

  zap delete: '~/Library/Containers/com.coteditor.CotEditor'
end
