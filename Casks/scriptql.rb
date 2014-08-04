class Scriptql < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.kainjow.com/downloads/ScriptQL_qlgenerator.zip'
  homepage 'http://www.kainjow.com/'

  qlplugin 'ScriptQL.qlgenerator'
end
