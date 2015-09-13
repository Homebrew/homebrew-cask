cask :v1 => 'barxtemp' do
  version '1.3.1'
  sha256 'cf9f0da35288f95d19140cb71657aa48ca90c850d43694f851fe27e4b63a8ed2'

  url "https://github.com/Gabriele91/barXtemp/releases/download/#{version}/barXtemp.app.zip"
  appcast 'https://github.com/Gabriele91/barXtemp/releases.atom'
  name 'barXtemp'
  homepage 'https://gabriele91.github.io/barXtemp/'
  license :mit

  depends_on :macos => '>= :mountain_lion'

  app 'barXtemp.app'
end
