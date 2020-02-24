cask 'macsvg' do
  version '1.1.6'
  sha256 '879228e0afb51bd451e52801b1b434f92869f133bef9f34a42bd144c2213d5a4'

  # github.com/dsward2/macSVG was verified as official when first introduced to the cask
  url "https://github.com/dsward2/macSVG/releases/download/v#{version}/macSVG-v#{version}.zip"
  appcast 'https://github.com/dsward2/macSVG/releases.atom'
  name 'macSVG'
  homepage 'https://macsvg.org/'

  depends_on macos: '>= :mojave'

  app "macSVG-v#{version}/macSVG.app"

  zap trash: [
               '~/Library/Application Scripts/com.arkphone.macsvg',
               '~/Library/Containers/com.arkphone.macsvg',
             ]
end
