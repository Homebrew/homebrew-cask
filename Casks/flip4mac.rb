cask :v1 => 'flip4mac' do
  version '3.3.3'
  sha256 '2ef87c50b2f767231f1b56e2e3d6486b2b6bd963a9c71711fcd84e3abd92bad6'

  url "http://www.telestream.net/download-files/flip4mac/#{version.sub(%r{\.\d+$},'').sub('.','-')}/Flip4Mac-#{version}.dmg"
  homepage 'http://www.telestream.net/flip4mac/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Flip4Mac.pkg'

  uninstall :pkgutil => 'net.telestream.Flip4Mac'
end
