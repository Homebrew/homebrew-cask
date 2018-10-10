cask 'nheko' do
  version '0.6.2'
  sha256 'b78a8322f9463a7bbb7b1c04aee2b5318c16cef9b5dafddac828e8fd59f2813e'

  url "https://github.com/mujx/nheko/releases/download/v#{version}/nheko-v#{version}.dmg"
  appcast 'https://github.com/mujx/nheko/releases.atom'
  name 'Nheko'
  homepage 'https://github.com/mujx/nheko'

  app 'Nheko.app'
end
