cask 'horos' do
  if MacOS.version <= :yosemite
    version '1.1.7'
    sha256 'd15e02d7678e0f41ad12910176307aeb6312e62d7386051bfe5a261a7feb004a'
  elsif MacOS.version <= :el_capitan
    version '2.0.2'
    sha256 '5cc1d6c71c8ae643b4df4fecee93dbe3cfacbcffef52001a76a7683a2725ac08'
  else
    version '2.4.0'
    sha256 '1665f0aa31633b1affcbecfbff30e36d802316b207aff37575f74f1ac22f348e'
  end

  url "https://horosproject.org/horos-content/Horos#{version}.dmg"
  name 'Horos – Free, open medical image viewer'
  homepage 'https://horosproject.org/'

  app 'Horos.app'
end
