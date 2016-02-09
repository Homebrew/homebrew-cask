cask 'coteditor' do
  if MacOS.release <= :snow_leopard
    version '1.3.1'
    sha256 '5c871bd9de30fc3c76fc66acb4ea258d4d3762ae341181d65a7ef1f8de4751c5'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}_For10.4.dmg"
  elsif MacOS.release <= :lion
    version '1.5.4'
    sha256 '444133083698c7c94c2b029644f39a0e36982ae34c24745789fa890626188347'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  else
    version '2.4.0'
    sha256 '21cd83228b4e87967cf881fe60826a5990341760bf9c9cf0dc1efe23ef1d4883'
    # github.com is the official download host per the vendor homepage
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  end

  appcast 'https://github.com/coteditor/CotEditor/releases.atom',
          checkpoint: '5a76ce63653f2a2eddd814ab67e0b4bd7b0486961fadf72a592bfe734d35ffc4'
  name 'CotEditor'
  homepage 'https://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
