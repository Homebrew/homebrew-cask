cask 'imitone' do
  version '0.9.0d'
  sha256 'b88be27f7f2a349f387d0a01ba9c60ae9ac344b93d3f64995eed7c41dc35a432'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/',
          checkpoint: '375b3e8ebd03ac408f490ddf74846e3b8b00b60130639f933a78c9e08d3bc313'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
