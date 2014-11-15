cask :v1 => 'linphone' do
  version '3.7.0'
  sha256 '4d4a01354a7b5cd011746d3477a93ffb6e531ff8e2afccd2b9bb031f06cc42cc'

  url "http://download-mirror.savannah.gnu.org/releases/linphone/3.7.x/macos/linphone-#{version}.dmg"
  gpg "#{url}.sig",
      :key_id => '3ecd52dee2f56985'
  homepage 'http://www.linphone.org/'
  license :unknown

  app 'Linphone.app'
end
