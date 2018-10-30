cask 'dozer' do
  version '2.1.0'
  sha256 'c4b496cdfa9336561a3ed5cfe4213708e93d9d3890b94c13e4d722e7f57c8675'

  url "https://github.com/Mortennn/Dozer/releases/download/#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
