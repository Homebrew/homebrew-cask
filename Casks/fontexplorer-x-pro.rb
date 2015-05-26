cask :v1 => 'fontexplorer-x-pro' do
  version '4.2.1'
  sha256 '9fd225ff73804231d094f16bdb435355a3b7557d74ec1aeb9d89e925f0673350'

  url "http://fast.fontexplorerx.com/FontExplorerXPro#{version.gsub('.','')}.dmg"
  name 'FontExplorer X Pro'
  homepage 'http://www.fontexplorerx.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'FontExplorer X Pro.app'

  zap :delete => [
                  # todo: is this user-created content?
                  # '~/FontExplorer X',
                  '~/Library/Application Support/Linotype/FontExplorer X',
                 ]
end
