cask 'barxtemp' do
  version '1.3.2'
  sha256 '85c8347ab8e7cbc8e7cf639317f3ff5df75feb9420bf94596dcfa05ac5914d16'

  url "https://github.com/Gabriele91/barXtemp/releases/download/#{version}/barXtemp.app.zip"
  appcast 'https://github.com/Gabriele91/barXtemp/releases.atom',
          :sha256 => '9b7756a504b6ce274e2efde312990f95bb831589f9bf6a21cb1ccfe5a7f55c86'
  name 'barXtemp'
  homepage 'https://gabriele91.github.io/barXtemp/'
  license :mit

  depends_on :macos => '>= :mountain_lion'

  app 'barXtemp.app'
end
