cask 'emojify' do
  version '0.1.1'
  sha256 '780635f2bbc54ce7c8d61d35fbdae3a064ec6e120f88afaeaa2e2b647dcb02ab'

  url "https://github.com/Haroenv/emojify-service/archive/v#{version}.zip"
  appcast 'https://github.com/Haroenv/emojify-service/releases.atom',
          checkpoint: '995ef5406f625566150fe2fd749e12fd6914978102e8919ea0a1398e5e0b6770'
  name 'Emojify Service'
  homepage 'https://github.com/Haroenv/emojify-service'

  service "emojify-service-#{version}/Emojify.workflow"
end
