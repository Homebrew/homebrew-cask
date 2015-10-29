cask :v1 => 'coreos-osx-gui' do
  version '1.0.4'
  sha256 '38b6bc5473b5537299cac4d8bd5de18d38a86ccf86f26e3c1540d0b3ab26c71e'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom',
          :sha256 => '031922a6fff5c76e477c857f376dbcbaf694c85df690aa37ec2a38072673709c'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end
