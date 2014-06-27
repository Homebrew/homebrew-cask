class Invisorql < Cask
  version 'latest'
  sha256 :no_check

  url 'http://www.pozdeev.com/invisor/InvisorQL.zip'
  homepage 'http://www.pozdeev.com/invisor/'

  qlplugin 'InvisorQL.qlgenerator'
end
