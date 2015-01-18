cask :v1 => 'keepingyouawake' do
  version '1.2.1'
  sha256 'e1f40532043949b785d0cb1d6f6a5a3a4ed4073a3db4ca6ed9b3d0275d7d1c2f'

  url "https://github.com/newmarcel/KeepingYouAwake/releases/download/#{version}/KeepingYouAwake-#{version}.zip"
  appcast 'https://newmarcel.github.io/KeepingYouAwake/appcast.xml',
    :sha256 => '738fcec2775620870b759319b9c49fabb71cfff9eaf330048c9725816c52254d',
    :format => :sparkle
  homepage 'https://github.com/newmarcel/KeepingYouAwake'
  license :mit

  app 'KeepingYouAwake.app'
end
