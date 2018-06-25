cask 'halla' do
  version '0.6.2'
  sha256 '6271fc52a6c4726c371a452f79fccfe190936fbf0d7257b74d1d8e2d50fec2f8'

  url "https://github.com/rstacruz/halla/releases/download/v#{version}/halla-osx.zip"
  appcast 'https://github.com/rstacruz/halla/releases.atom'
  name 'Halla'
  homepage 'https://github.com/rstacruz/halla'

  app 'Halla.app'

  caveats <<~EOS
    See https://github.com/rstacruz/halla/blob/master/README.md on creating your ~/.hallarc
  EOS
end
