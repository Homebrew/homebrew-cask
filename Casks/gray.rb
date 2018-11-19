cask 'gray' do
  version '0.9.5'
  sha256 'f7f7dc488fd3ce39658c382672dc85014d253d0d673cf0b7f9d7c90f1330dae4'

  url "https://github.com/zenangst/Gray/releases/download/#{version}/Gray.zip"
  appcast 'https://github.com/zenangst/Gray/releases.atom'
  name 'Gray'
  homepage 'https://github.com/zenangst/Gray'

  depends_on macos: '>= :mojave'

  app 'Gray.app'
end
