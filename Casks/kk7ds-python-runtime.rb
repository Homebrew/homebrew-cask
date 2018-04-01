cask 'kk7ds-python-runtime' do
  version '10.1'
  sha256 '5cee8acb941e39f93a4df6a99ed29a14c48da0bc5beb3b31068852b1fad8b009'

  url "http://www.d-rats.com/download/OSX_Runtime/KK7DS_Python_Runtime_R#{version.major}.pkg"
  appcast 'http://www.d-rats.com/download/OSX_Runtime/',
          checkpoint: '076ef6eff11fc08dbacfc577635b29af98c3e9bb11c0173dcd7b688c5a9611e0'
  name 'KK7DS Python Runtime'
  homepage 'http://www.d-rats.com/download/OSX_Runtime/'

  pkg "KK7DS_Python_Runtime_R#{version.major}.pkg"

  uninstall pkgutil: 'com.danplanet.python_runtime',
            delete:  '/opt/kk7ds'
end
