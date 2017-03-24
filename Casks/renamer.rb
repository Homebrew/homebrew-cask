cask 'renamer' do
  version '5.0.3'
  sha256 '59e9d52740d5ff04003f195ef5ffe582d7f9db5c1a7ad53c5264185e27497c6f'

  # storage.googleapis.com/incrediblebee was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/incrediblebee/apps/Renamer-#{version.major}/Renamer.zip"
  name 'Renamer'
  homepage 'http://renamer.com/'

  app 'Renamer.app'
end
