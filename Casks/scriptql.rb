cask :v1 => 'scriptql' do
  version :latest
  sha256 :no_check

  url 'http://www.kainjow.com/downloads/ScriptQL_qlgenerator.zip'
  homepage 'http://www.kainjow.com/'
  license :unknown

  qlplugin 'ScriptQL.qlgenerator'
end
