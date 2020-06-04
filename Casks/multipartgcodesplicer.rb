cask 'multipartgcodesplicer' do
  version '0.2'
  sha256 '5b45dc4eaebdc7c16e35a584323e28ce194f4c617820b88d0ac6696a40d99f57'

  url "https://github.com/Ghostbomb/MultiPartGcodeSplicer/releases/download/v#{version}/MultiPartGcodeSplicer.app.zip"
  appcast 'https://github.com/Ghostbomb/MultiPartGcodeSplicer/releases.atom'
  name 'MultiPartGcodeSplicer'
  homepage 'https://github.com/Ghostbomb/MultiPartGcodeSplicer'

  app 'MultiPartGcodeSplicer.app'
end
