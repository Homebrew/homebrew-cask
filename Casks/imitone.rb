cask 'imitone' do
  version '0.9.0d'
  sha256 'b88be27f7f2a349f387d0a01ba9c60ae9ac344b93d3f64995eed7c41dc35a432'

  url "https://imitone.com/beta/imitone-#{version}.dmg"
  appcast 'https://imitone.com/beta/',
          checkpoint: '8d9ae178bbba1ed3dc26b07fc9d16a907eefc2827f9e091a8c21cd3085b69544'
  name 'imitone'
  homepage 'https://imitone.com/'

  app 'imitone.app'
end
