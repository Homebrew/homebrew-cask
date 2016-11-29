cask 'nocturn' do
  version '1.2.1'
  sha256 '5bc99b5c5d8867e83482f47835709267eeecdb055d78efddfac9f480ff7cdf47'

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast 'https://github.com/k0kubun/Nocturn/releases.atom',
          checkpoint: '9c98ec9c8726dadf95924164f37481c3ffa76ee018b1aa9a5a3cf18463317978'
  name 'Nocturn'
  homepage 'https://github.com/k0kubun/Nocturn'

  app 'Nocturn-darwin-x64/Nocturn.app'
end
