cask 'keycastr' do
  version '0.9.2'
  sha256 'c6664d87d52fbfde0f358cd412d07c4fd57ccd437dc2c1bb8d89259ed3ab75d2'

  url "https://github.com/keycastr/keycastr/releases/download/v#{version}/KeyCastr.app.zip"
  appcast 'https://github.com/keycastr/keycastr/releases.atom',
          checkpoint: '5394902ffafbea8715673cab0837cb54dccfe9d8258067b94cfb10d009debf5f'
  name 'KeyCastr'
  homepage 'https://github.com/keycastr/keycastr'
  license :bsd

  accessibility_access true

  app 'KeyCastr.app'
end
