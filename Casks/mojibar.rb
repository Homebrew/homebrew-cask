cask 'mojibar' do
  version '2.3.2'
  sha256 '7c6faac950216475ca88600cdf07de0b92b5ce12c3331286bff85c9567d475d8'

  url "https://github.com/muan/mojibar/releases/download/#{version}/mojibar.zip"
  appcast 'https://github.com/muan/mojibar/releases.atom',
          checkpoint: '4aed1bf5a60456b1ff68d3b714027ea75ffeaff45074dd30be401b30de8852f5'
  name 'Mojibar'
  homepage 'https://github.com/muan/mojibar'

  app 'Mojibar-darwin-x64/Mojibar.app'
end
