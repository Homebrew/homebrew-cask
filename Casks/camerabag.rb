cask :v1 => 'camerabag' do
  version '2.5.06'
  sha256 'cbc34e49c94dfe0e9434c4495e970808b8498bdd7a62251dadcdb192595aff58'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://downloads.nevercenter.com.s3.amazonaws.com/CameraBag_Mac_#{version.gsub('.','_')}.dmg"
  name 'CameraBag'
  homepage 'https://nevercenter.com/camerabag/desktop/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'CameraBag 2.app'
end
