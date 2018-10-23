cask 'horos' do
  if MacOS.version <= :yosemite
    version '1.1.7'
    sha256 'd15e02d7678e0f41ad12910176307aeb6312e62d7386051bfe5a261a7feb004a'
  elsif MacOS.version <= :el_capitan
    version '2.0.2'
    sha256 '5cc1d6c71c8ae643b4df4fecee93dbe3cfacbcffef52001a76a7683a2725ac08'
  else
    version '3.3.1'
    sha256 'b036fcd361c255f95ea8e28558a545b9df7a9e9eeeab7558d7e1c66a5dea3a7f'
  end

  url "https://horosproject.org/horos-content/Horos#{version}.dmg"
  appcast 'https://horosproject.org/download/'
  name 'Horos – Free, open medical image viewer'
  homepage 'https://horosproject.org/'

  app 'Horos.app'
end
