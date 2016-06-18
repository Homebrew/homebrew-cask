cask 'pdfsam-basic' do
  version '3.0.3'
  sha256 '530ba53b4564a4fdabd0daa5a2460e5f6e0440dea3ecfdaf53862a5d836522bf'

  # github.com/torakiki/pdfsam was verified as official when first introduced to the cask
  url "https://github.com/torakiki/pdfsam/releases/download/v#{version}.RELEASE/PDFsam-#{version}.RELEASE.dmg"
  appcast 'https://github.com/torakiki/pdfsam/releases.atom',
          checkpoint: '924e4f22ae9d8927fcca455b8378640202fe4ad0689999dff51a2464478365ac'
  name 'PDFsam Basic'
  homepage 'http://www.pdfsam.org/'
  license :gpl

  app "PDFsam Basic #{version}.app"
end
