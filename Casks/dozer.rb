cask 'dozer' do
  version '3.0.2'
  sha256 '14bf6e1eb610e163c74fa86aae17a123bac4cab49173fd4ed4a461dc6ec8a2bf'

  url "https://github.com/Mortennn/Dozer/releases/download/#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
