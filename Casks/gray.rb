cask 'gray' do
  version '0.13.0'
  sha256 '2142cc91e6dc8aa91f431a3788a5131e3373d6e5da53866321fcf3fa9985e780'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
