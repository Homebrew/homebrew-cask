cask 'noise-machine' do
  if MacOS.version <= :snow_leopard
    version '1.05'
    sha256 '72a9759388f05d4880c5c1020215f6ba01ecfbe2e574787c08adf375be192229'
    url 'http://www.publicspace.net/download/signedNM_SL.zip'
  else
    version '1.14'
    sha256 'c45197362b0c8e781505ca534952f5d75761fef6a59e356da9a84ac9905973d6'
    url 'http://www.publicspace.net/download/signedNM.zip'
  end

  appcast 'http://www.publicspace.net/app/nm.xml'
  name 'Noise Machine'
  homepage 'http://www.publicspace.net/NoiseMachine/'

  app 'Noise Machine.app'
end
