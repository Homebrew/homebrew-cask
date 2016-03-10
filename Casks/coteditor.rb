cask 'coteditor' do
  if MacOS.release <= :snow_leopard
    version '1.3.1'
    sha256 '5c871bd9de30fc3c76fc66acb4ea258d4d3762ae341181d65a7ef1f8de4751c5'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}_For10.4.dmg"
  elsif MacOS.release <= :lion
    version '1.5.4'
    sha256 '444133083698c7c94c2b029644f39a0e36982ae34c24745789fa890626188347'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  else
    version '2.4.3'
    sha256 '8226c911bf6eff7978235e9829a3a0a6d28234e10d52bb2d7564136551142f58'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  end

  appcast 'https://github.com/coteditor/CotEditor/releases.atom',
          checkpoint: '466066b21089132bf568c8738c2959564f75e4ef5fd33cf08a6a1c7b0e5ec4b2'
  name 'CotEditor'
  homepage 'https://coteditor.com/'
  license :gpl

  app 'CotEditor.app'
end
