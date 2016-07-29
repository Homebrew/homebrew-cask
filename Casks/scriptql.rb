cask 'scriptql' do
  version :latest
  sha256 :no_check

  url 'https://www.kainjow.com/downloads/ScriptQL_qlgenerator.zip'
  name 'ScriptQL'
  homepage 'https://www.kainjow.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  qlplugin 'ScriptQL.qlgenerator'
end
