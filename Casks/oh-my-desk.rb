cask 'oh-my-desk' do
  version '2.0.3'
  sha256 '5a2528a1365ebd877394bb652d2a7bbd64d34cf680aa759a23524ea26b8b4d4a'

  url "https://github.com/AhKi/oh-my-desk/releases/download/v#{version}/oh-my-desk-#{version}.dmg"
  appcast 'https://github.com/AhKi/oh-my-desk/releases.atom'
  name 'oh-my-desk'
  homepage 'https://github.com/AhKi/oh-my-desk'

  app 'oh-my-desk.app'
end
