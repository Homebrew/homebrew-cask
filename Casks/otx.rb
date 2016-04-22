cask 'otx' do
  version '1.7'
  sha256 '116a9441cfed31c28e0f9b3aa26b82f2a7186d3c8ec4afd2173c2ad460e51ab8'

  url "https://github.com/x43x61x69/otx/releases/download/v#{version}/otx_b566.zip"
  appcast 'https://github.com/x43x61x69/otx/releases.atom',
          checkpoint: 'd15c0290c67946c961ad885829d82d9e455cbd94e1be3892120711f4d89778e1'
  name 'otx'
  homepage 'https://github.com/x43x61x69/otx'
  license :oss

  app 'otx.app'

  caveats <<-EOS.undent
    If you would like to install the #{token} CLI tool as well, please run the following command:

      ln -s '#{staged_path}/#{token}' '/usr/local/bin/#{token}'
  EOS
end
