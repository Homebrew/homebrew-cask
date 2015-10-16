cask :v1 => 'scriptql' do
  version :latest
  sha256 :no_check

  url 'http://www.kainjow.com/downloads/ScriptQL_qlgenerator.zip'
  name 'ScriptQL'
  homepage 'http://www.kainjow.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  qlplugin 'ScriptQL.qlgenerator'
end
