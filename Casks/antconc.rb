cask :v1 => 'antconc' do
  version '3.4.3'
  sha256 'c63b9a9fd60a97c8551c6fa2902663568be9cdabee5601a2fe99715f47921421'

  url 'http://www.laurenceanthony.net/software/antconc/releases/AntConc343/AntConc.zip'
  name 'AntConc'
  homepage 'http://www.laurenceanthony.net/software/antconc'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'AntConc.app'
end
