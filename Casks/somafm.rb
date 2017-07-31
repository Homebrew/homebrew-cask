cask 'somafm' do
  version '0.1.0'
  sha256 '0a0c0cbe23fce31df72261716c3ddb1b6b8d2bfed80f1f8f7aa451c9134e746c'

  url "https://github.com/alfg/somafm/releases/download/v#{version}/SomaFM-#{version}.dmg"
  appcast 'https://github.com/alfg/somafm/releases.atom',
          checkpoint: 'd95503619ea99dcd110329db8e9dcb9094cc05d5b748af9bb0d6945ca05b32bd'
  name 'SomaFM'
  homepage 'https://github.com/alfg/somafm'

  app 'SomaFM.app'
end
