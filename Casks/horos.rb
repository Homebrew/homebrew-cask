cask 'horos' do
  if MacOS.version <= :yosemite
    version '1.1.7'
    sha256 'd15e02d7678e0f41ad12910176307aeb6312e62d7386051bfe5a261a7feb004a'
  elsif MacOS.version <= :el_capitan
    version '2.0.2'
    sha256 '5cc1d6c71c8ae643b4df4fecee93dbe3cfacbcffef52001a76a7683a2725ac08'
  else
    version '3.1.1'
    sha256 'f9c50e55ec170f9d9c4b0df8450f1b66551cab7ae3a54ceedd2e273b6dca4197'
  end

  url "https://horosproject.org/horos-content/Horos#{version}.dmg"
  appcast 'https://github.com/horosproject/horos/releases.atom'
  name 'Horos – Free, open medical image viewer'
  homepage 'https://horosproject.org/'

  app 'Horos.app'
end
