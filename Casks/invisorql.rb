cask :v1 => 'invisorql' do
  version :latest
  sha256 :no_check

  url 'http://www.pozdeev.com/invisor/InvisorQL.zip'
  homepage 'http://www.pozdeev.com/invisor/'
  license :unknown    # todo: improve this machine-generated value

  qlplugin 'InvisorQL.qlgenerator'
end
