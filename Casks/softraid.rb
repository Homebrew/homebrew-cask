cask 'softraid' do
  version '5.6'
  sha256 'a255295d5e98fa47556f6aa54ef22ef7756fc5cd5256dc34cf312c41a520396f'

  url "https://softraid.com/updates/SoftRAID%20#{version}.dmg"
  appcast 'https://www.softraid.com/updates/Latest_SoftRAID_Release.html',
          checkpoint: '72a2fdf31da4cc525e869bc11eeb6e927d8ec294060ea8078f65f8f58a500dfe'
  name 'SoftRAID'
  homepage 'https://www.softraid.com/'

  app "SoftRAID #{version}/SoftRAID #{version}.app"

  caveats do
    <<-EOS.undent
      You will needo to launch the SoftRAID #{version}.app manually to update the SoftRAID driver
      followed by a reboot for the installation to take effect.
    EOS
  end
end
