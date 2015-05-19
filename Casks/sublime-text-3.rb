cask :v1 => 'sublime-text-3' do
  version '3083'
  sha256 'fe6dd8d8192fdb01988f99289e5bc1d9a4e66cf67548e144002051c23369a5ff'

  url 'http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%20Build%203083.dmg'
  name 'Sublime Text 3'
  homepage 'http://www.sublimetext.com/3'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
end
