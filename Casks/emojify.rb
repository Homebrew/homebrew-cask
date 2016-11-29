cask 'emojify' do
  version '0.1.1'
  sha256 '780635f2bbc54ce7c8d61d35fbdae3a064ec6e120f88afaeaa2e2b647dcb02ab'

  url "https://github.com/Haroenv/emojify-service/archive/v#{version}.zip"
  appcast 'https://github.com/Haroenv/emojify-service/releases.atom',
          checkpoint: 'd19588f51bfb615eb77bead4deb04eb8871dc320bc3d934538f52d212f394ad1'
  name 'Emojify Service'
  homepage 'https://github.com/Haroenv/emojify-service'

  service "emojify-service-#{version}/Emojify.workflow"
end
