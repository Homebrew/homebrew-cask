cask 'garmin-training-center' do
  version '3.2.1'
  sha256 '82bda2f40b3ad8402f1e88fd7750b2827dc8f8f17ea45165e0c85fe6dbd7dfb6'

  url "https://www8.garmin.com/software/TrainingCenterforMac_#{version.delete('.')}.dmg"
  name 'Garmin Training Center'
  homepage 'http://www.garmin.com/garmin/cms/intosports/training_center'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg 'Garmin Training Center.pkg'

  uninstall pkgutil: 'com.garmin.garminTrainingCenter.*pkg'
end
