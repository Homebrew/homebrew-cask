cask 'cydownload' do
  version '1.1.1'
  sha256 'b35df6bd89949b3321da4411091d5388d35bdf7cae54388ad853861c084e5ce2'

  url "https://github.com/borishonman/cydownload/releases/download/v#{version}/cydownload-macos.zip"
  appcast 'https://github.com/borishonman/cydownload/releases.atom'
  name 'cydownload'
  homepage 'https://github.com/borishonman/cydownload'

  app 'cydownload.app'
end
