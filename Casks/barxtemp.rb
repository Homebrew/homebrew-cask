cask 'barxtemp' do
  version '1.3.2'
  sha256 '85c8347ab8e7cbc8e7cf639317f3ff5df75feb9420bf94596dcfa05ac5914d16'

  # github.com/Gabriele91/barXtemp was verified as official when first introduced to the cask
  url "https://github.com/Gabriele91/barXtemp/releases/download/#{version}/barXtemp.app.zip"
  appcast 'https://github.com/Gabriele91/barXtemp/releases.atom',
          checkpoint: '9b9241fbc6f23d60d033f2567a8d21f4aa077055c46fb87541ff6ef5cb2cdbae'
  name 'barXtemp'
  homepage 'https://gabriele91.github.io/barXtemp/'

  depends_on macos: '>= :mountain_lion'

  app 'barXtemp.app'
end
