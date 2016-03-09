cask 'pd-extended' do
  version '0.43.4'
  sha256 'abe7bd637b1495ad9d5a500f0a18550c1600e34ee17e60aa1a48e4dbdee59bb9'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/project/pure-data/pd-extended/#{version}/Pd-#{version}-extended-macosx105-i386.dmg"
  name 'Pd-extended'
  homepage 'http://puredata.info/downloads/pd-extended'
  license :gpl

  app 'Pd-extended.app'

  postflight do
    set_permissions "#{staged_path}/Pd-extended.app", 'u+w'
  end
end
