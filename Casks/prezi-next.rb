cask 'prezi-next' do
  version '1.41.0'
  sha256 'c40d2a41ef37290c819770f2b0a5b47764b1717bb464834b5e08258269febcbf'

  url "https://desktopassets.prezi.com/mac/pitch/releases/Prezi_Next_#{version}.dmg"
  appcast 'https://prezidesktop.s3.amazonaws.com/assets/mac/pitch/updates/prezi-business.xml'
  name 'Prezi Next'
  homepage 'https://prezi.com/'

  app 'Prezi Next.app'
end
