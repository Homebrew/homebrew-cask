cask 'qladdict' do
  version '1.1.9'
  sha256 '477fad7db9e993127ae3666eda2725d62d999300b0529e654f686eebc8315278'

  url "https://github.com/tattali/QLAddict/releases/download/#{version}/QuickLookAddict.qlgenerator.#{version}.zip"
  name 'QuickLookAddict'
  homepage 'https://github.com/tattali/QLAddict/'

  qlplugin 'QuickLookAddict.qlgenerator'
end
