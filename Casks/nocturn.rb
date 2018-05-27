cask 'nocturn' do
  version '1.6.2'
  sha256 '76bf310719ab2da6ee3356d548a3e2405403ab4dfbb8ec7721a277fbff6401d8'

  url "https://github.com/k0kubun/Nocturn/releases/download/v#{version}/Nocturn-darwin-x64.zip"
  appcast 'https://github.com/k0kubun/Nocturn/releases.atom',
          checkpoint: '0b791294a4fa4bc9944b38ea428710a04cd208e4d871b3f3fedcbbb39fe3067c'
  name 'Nocturn'
  homepage 'https://github.com/k0kubun/Nocturn'

  app 'Nocturn-darwin-x64/Nocturn.app'
end
