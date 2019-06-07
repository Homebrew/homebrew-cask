cask 'framer-x' do
  version '32611,1559836113'
  sha256 'b7a69ef615e05b91669bbd7f16b0847c9a548d239c48cc32f9c537ed9c06b9a2'

  # dl.devmate.com/com.framer.x was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.framer.x/#{version.before_comma}/#{version.after_comma}/FramerX-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.framer.x.xml'
  name 'Framer X'
  homepage 'https://framer.com/'

  depends_on macos: '>= :high_sierra'

  app 'Framer X.app'
end
