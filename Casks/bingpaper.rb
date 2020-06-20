cask 'bingpaper' do
  version '0.11.1'
  sha256 '29694e8ae3bea1a50719865ffe4ca19e7794b1c7dc733a2cd532056cf35641ee'

  url "https://github.com/pengsrc/BingPaper/releases/download/v#{version}/BingPaper.v#{version}.build.46.zip"
  appcast 'https://github.com/pengsrc/BingPaper/releases.atom'
  name 'BingPaper'
  homepage 'https://github.com/pengsrc/BingPaper'

  auto_updates false

  app 'BingPaper.app'

  uninstall quit: 'io.pjw.mac.BingPaper'

  zap trash: [
               '~/Library/Application Scripts/io.pjw.mac.BingPaper',
               '~/Library/Application Scripts/io.pjw.mac.BingPaperLoginItem',
               '~/Library/Containers/io.pjw.mac.BingPaper',
               '~/Library/Containers/io.pjw.mac.BingPaperLoginItem',
             ]
end
