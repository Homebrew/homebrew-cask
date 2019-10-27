cask 'qladdict' do
  version '1.2.5'
  sha256 '912fc99e78919712bfff5ef9b9ce2c655d798306251b3eaa4a00e4f1cb1690bb'

  url "https://github.com/tattali/QLAddict/releases/download/#{version}/QLAddict.qlgenerator.#{version}.zip"
  appcast 'https://github.com/tattali/QLAddict/releases.atom'
  name 'QLAddict'
  homepage 'https://github.com/tattali/QLAddict/'

  qlplugin 'QLAddict.qlgenerator'
end
