cask 'pyfa' do
  version '1.31.0,yc119.8-1.0'
  sha256 'e09bb2ae6200b16c13b426d30c0e7fbc544e2280fc70d72a44fb83d105920314'

  url "https://github.com/pyfa-org/Pyfa/releases/download/v#{version.before_comma}/pyfa-#{version.before_comma}-#{version.after_comma}-mac.zip"
  appcast 'https://github.com/pyfa-org/Pyfa/releases.atom',
          checkpoint: 'a0bb97da000210bf06816326ce523053a6ce3ffad2a6c7faf1dbf57cb022f31b'
  name 'pyfa'
  homepage 'https://github.com/pyfa-org/Pyfa'

  app 'pyfa.app'
end
