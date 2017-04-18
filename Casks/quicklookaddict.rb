cask 'quicklookaddict' do
  version '1.1.9'
  sha256 '477fad7db9e993127ae3666eda2725d62d999300b0529e654f686eebc8315278'

  url "https://github.com/tattali/QLAddict/releases/download/#{version}/QuickLookAddict.qlgenerator.#{version}.zip"
  appcast 'https://github.com/tattali/QLAddict/releases.atom',
          checkpoint: 'fb11e07a57ef9507ce915e55e7a35419852767a4b39157dabda9e8914444d3b5'
  name 'QuickLookAddict'
  homepage 'https://github.com/tattali/QLAddict/'

  qlplugin 'QuickLookAddict.qlgenerator'
end
