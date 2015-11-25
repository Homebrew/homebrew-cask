cask :v1 => 'coreos-osx-gui' do
  version '1.0.8'
  sha256 'da3927bd6b720d84c6a61f4c5761560d878a76c5e73ce2dfb63c4f8f74b0b516'

  url "https://github.com/rimusz/coreos-osx/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx/releases.atom',
          :sha256 => '9a136a45caae4daefbd8541af9a381945b4659a3484755c918bc99812c977aff'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx'
  license :oss

  app 'CoreOS GUI.app'
end
