cask 'scriptql' do
  version :latest
  sha256 :no_check

  url 'https://www.kainjow.com/downloads/ScriptQL_qlgenerator.zip'
  name 'ScriptQL'
  homepage 'https://www.kainjow.com/'

  qlplugin 'ScriptQL.qlgenerator'
end
