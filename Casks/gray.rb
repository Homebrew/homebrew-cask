cask 'gray' do
  if MacOS.version >= :mojave
    version '0.9.5'
    sha256 'f7f7dc488fd3ce39658c382672dc85014d253d0d673cf0b7f9d7c90f1330dae4'
  else
    version '0.9.3'
    sha256 '0d9566ec7741603ddfcee4a241370aab97605b874ee168e79d0ea89b587b8154'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  app 'Gray.app'
end
