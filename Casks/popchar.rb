cask 'popchar' do
  version '8.2'
  sha256 '32cab3a02c9fc867a6e668ba6804ffa2c573e0719b6fdaf3fa59668ba67b5bf8'

  url "http://www.ergonis.com/downloads/products/popcharx/PopCharX#{version.no_dots}-Install.dmg",
      user_agent: :fake
  appcast 'http://www.ergonis.com/products/popcharx/history.html',
          checkpoint: 'a79e524cb513ae1ca80a4a08875e1f9dea0f77427abeeef9456edf7f662f3f59'
  name 'PopChar X'
  homepage 'http://www.ergonis.com/products/popcharx/'

  app 'PopChar.app'
end
