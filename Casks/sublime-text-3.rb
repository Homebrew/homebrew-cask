cask :v1 => 'sublime-text-3' do
  version '3083'
  sha256 'fe6dd8d8192fdb01988f99289e5bc1d9a4e66cf67548e144002051c23369a5ff'

  url "https://download.sublimetext.com/Sublime%20Text%20Build%20#{version}.dmg"
  name 'Sublime Text 3'
  homepage 'https://www.sublimetext.com/3'
  license :commercial

  app 'Sublime Text.app'
  binary 'Sublime Text.app/Contents/SharedSupport/bin/subl'
end
