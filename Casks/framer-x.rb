cask 'framer-x' do
  version '36837'
  sha256 '2a21e169b0eb30f802027d6c54a8754aee06d3295c0a11a5294917faa3731851'

  url "https://dl.framer.com/com.framer.x/#{version}/FramerX-#{version}.zip"
  appcast 'https://updates.framer.com/sparkle/com.framer.x'
  name 'Framer X'
  homepage 'https://framer.com/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
