cask :v1 => 'invisorql' do
  version :latest
  sha256 :no_check

  url 'http://www.pozdeev.com/invisor/InvisorQL.zip'
  name 'Invisor QuickLook Plug-In'
  homepage 'http://www.pozdeev.com/invisor/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  qlplugin 'InvisorQL.qlgenerator'
end
