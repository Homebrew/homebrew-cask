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
    version '2.5.5'
    sha256 'ef2dd4c3abe206c1dbf924361fa669f93df3613dafd0e5c903fa078def995987'
    # github.com/coteditor/CotEditor was verified as official when first introduced to the cask
    url "https://github.com/coteditor/CotEditor/releases/download/#{version}/CotEditor_#{version}.dmg"
  end

  appcast 'https://github.com/coteditor/CotEditor/releases.atom',
          checkpoint: '73cf45f7db00b62aab14cd13055c097d354606ff66a6f840b771430fc04a836d'
  name 'CotEditor'
  homepage 'https://coteditor.com/'
  license :apache

  app 'CotEditor.app'

  zap delete: '~/Library/Containers/com.coteditor.CotEditor'
end
