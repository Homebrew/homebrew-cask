cask 'netron' do
  version '2.2.4'
  sha256 '810f171f444c908fffb51edd87b1a706de5d89eed5129bdbb870efe5e6a6d930'

  url "https://github.com/lutzroeder/Netron/releases/download/v#{version}/Netron-#{version}-mac.zip"
  appcast 'https://github.com/lutzroeder/Netron/releases.atom'
  name 'Netron'
  homepage 'https://github.com/lutzroeder/Netron'

  auto_updates true

  app 'Netron.app'
end
