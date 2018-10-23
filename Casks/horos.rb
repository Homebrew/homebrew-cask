cask 'horos' do
  if MacOS.version <= :yosemite
    version '1.1.7'
    sha256 'd15e02d7678e0f41ad12910176307aeb6312e62d7386051bfe5a261a7feb004a'
  elsif MacOS.version <= :el_capitan
    version '2.0.2'
    sha256 '5cc1d6c71c8ae643b4df4fecee93dbe3cfacbcffef52001a76a7683a2725ac08'
  else
    version '3.3.0'
    sha256 '6dfe7eb8c5d9a281519659876c4f9c9cb0bb7b0977c577eac17405fdb8ef6310'
  end

  url "https://horosproject.org/horos-content/Horos#{version}.dmg"
  appcast 'https://horosproject.org/download/'
  name 'Horos – Free, open medical image viewer'
  homepage 'https://horosproject.org/'

  app 'Horos.app'
end
