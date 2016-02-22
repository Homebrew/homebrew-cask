cask 'invisor-lite' do
  version '3.6'
  sha256 'd07a1ff2349482c3e0617af6877823cc3527ea3104f2d1a403f70449453f30ee'

  url "http://www.pozdeev.com/invisor/download/InvisorLite-#{version}.dmg"
  appcast 'http://www.pozdeev.com/invisor/appcast_lite.xml',
          checkpoint: '315ad2e5b37a0cf09a6b9ea6ea12fdaddba465f8054c681bc3a325c27ccee82e'
  name 'Invisor Lite'
  homepage 'http://www.pozdeev.com/invisor/'
  license :gratis

  app 'Invisor Lite.app'
end
