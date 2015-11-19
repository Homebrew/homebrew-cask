cask :v1 => 'coreos-osx-gui' do
  version '1.0.5'
  sha256 'd8fcd01663be60855630f82ac4c724428347632f9a5e9423fbe885d920214402'

  url "https://github.com/rimusz/coreos-osx-gui/releases/download/v#{version}/CoreOS_GUI_v#{version}.dmg"
  appcast 'https://github.com/rimusz/coreos-osx-gui/releases.atom',
          :sha256 => '9a136a45caae4daefbd8541af9a381945b4659a3484755c918bc99812c977aff'
  name 'CoreOS GUI'
  name 'CoreOS-Vagrant GUI'
  homepage 'https://github.com/rimusz/coreos-osx-gui'
  license :oss

  app 'CoreOS GUI.app'
end
