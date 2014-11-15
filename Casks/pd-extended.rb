cask :v1 => 'pd-extended' do
  version '0.43.4'
  sha256 'abe7bd637b1495ad9d5a500f0a18550c1600e34ee17e60aa1a48e4dbdee59bb9'

  url "https://downloads.sourceforge.net/project/pure-data/pd-extended/#{version}/Pd-#{version}-extended-macosx105-i386.dmg"
  homepage 'http://puredata.info/downloads/pd-extended'
  license :oss

  app 'Pd-extended.app'

  uninstall_preflight do
    system '/bin/chmod', '-R', '--', 'u+w', "#{staged_path}/Pd-extended.app"
  end
end
