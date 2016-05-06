cask 'reflector' do
  version '2.5.0'
  sha256 '851f5fda1a853ce3aa314cb6ae53b28650691cad6ef7a23a3143a092eae5d8e0'

  url "https://download.airsquirrels.com/Reflector2/Mac/Reflector-#{version}.dmg"
  appcast 'https://updates.airsquirrels.com/Reflector2/Mac/Reflector2.xml',
          checkpoint: '14632a3b84975374e655bec5de780820d537d90dc0a610d230a78f678f193c8f'
  name 'Reflector 2'
  homepage 'http://www.airsquirrels.com/reflector/'
  license :commercial

  depends_on macos: '>= :mountain_lion'

  app 'Reflector 2.app'
end
