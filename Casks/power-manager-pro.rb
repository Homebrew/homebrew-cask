cask 'power-manager-pro' do
  version '4.5.5'
  sha256 'b4cf8da13cd38055d93cc9627f6266241e4bc3b0adf3842c81a7dcef97d2ea71'

  url "https://www.dssw.co.uk/powermanager/dsswpowermanagerpro-#{version.no_dots}.dmg"
  appcast 'https://version.dssw.co.uk/powermanager/professional',
          checkpoint: 'f99c254362f255dd99c85e615823e108c8c1aa9e7418f666d790aadd5d33fa7a'
  name 'Power Manager Pro'
  homepage 'https://www.dssw.co.uk/powermanager/professional/'

  auto_updates true
  depends_on macos: '>= :lion'

  app 'Power Manager Pro.app'
end
