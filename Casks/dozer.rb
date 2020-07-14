cask 'dozer' do
  version '4.2.0'
  sha256 '8998bc850a86a9812a3930cc23fb77f71ae4ca72619fc5b8ee335acdf2f9ab32'

  url "https://github.com/Mortennn/Dozer/releases/download/v#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
