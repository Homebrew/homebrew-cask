cask 'mist' do
  version '0.9.3'
  sha256 '36c96d79f9b1bff15c0b152754a9d85a19eaf9ecc39d739455b1801a99baeee7'

  url "https://github.com/ethereum/mist/releases/download/v#{version}/Mist-macosx-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/ethereum/mist/releases.atom',
          checkpoint: '3b1579bde3cc402ac1fd41a873b7ca38db1f58831f2347c098010d90cbe4ff55'
  name 'Mist'
  homepage 'https://github.com/ethereum/mist'

  app 'Mist.app'
end
