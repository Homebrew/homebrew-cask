cask :v1 => 'shiftit' do
  version '1.6.1'
  sha256 '64b9fdb4b8104a3e8efc307119ca4caba68a983916a4424db507b1e05cec3644'

  url "https://github.com/fikovnik/ShiftIt/releases/download/version-#{version}/ShiftIt-#{version}.zip"
  appcast 'https://raw.github.com/fikovnik/ShiftIt/develop/release/appcast.xml',
          :sha256 => '31b00662480244b9c2a739e342154fbfa52e50d29bd9c3a4fd683e6f7e905a04'
  homepage 'https://github.com/fikovnik/ShiftIt'
  license :gpl

  app 'ShiftIt.app'
end
