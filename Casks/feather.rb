cask 'feather' do
  version '0.0.5'
  sha256 'a39ff8057ca217eb006938b3f0b99f44fdff0ed3035c1c9cc3a1f4f9e53b5046'

  url "https://github.com/lukakerr/feather/releases/download/v#{version}/Feather-#{version}.zip"
  appcast 'https://github.com/lukakerr/feather/releases.atom',
          checkpoint: '2abf673cf4461730e000dda9eda31162a7497d27f55048bf2a6e78de130c749f'
  name 'Feather'
  homepage 'https://github.com/lukakerr/feather'

  app 'Feather.app'

  zap trash: '~/Library/Caches/com.lukakerr.feather'
end
