cask 'pencil' do
  version '2.0.18'
  sha256 'dfddc7a5b7b781eed0cd8dc998656421e2d86eddb1068fe227cc85e04c7ab520'

  url "https://github.com/prikhi/pencil/releases/download/v#{version}/Pencil-#{version}-mac-osx.zip"
  appcast 'https://github.com/prikhi/pencil/releases.atom',
          checkpoint: '78c1eac95e9b45745b6a5e2590e8023626ca9928b8f650f0362c62ab18da8a00'
  name 'Pencil'
  homepage 'https://github.com/prikhi/pencil'

  app 'Pencil.app'
end
