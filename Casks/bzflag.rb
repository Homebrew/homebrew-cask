cask 'bzflag' do
  version '2.4.12'
  sha256 '5bf28fab219bae32cdfd32765289b3454b7e658ffe49d05ea49c2c03d6749fe7'

  url "https://download.bzflag.org/bzflag/macos/#{version}/BZFlag-#{version}-macOS.zip"
  appcast 'https://github.com/BZFlag-Dev/bzflag/releases.atom',
          checkpoint: '6e4b261035541185c5cbe2932845df390d71010942d06eb8e94775630620810c'
  name 'BZFlag'
  homepage 'https://www.bzflag.org/'

  depends_on macos: '>= :lion'

  app "BZFlag-#{version}.app"
end
