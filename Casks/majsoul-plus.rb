cask 'majsoul-plus' do
  version '2.0.0'
  sha256 '7331b7a0fb8f400e1128cccb4a638aa887390384ac53757b46c6e131ef60f928'

  url "https://github.com/MajsoulPlus/majsoul-plus/releases/download/v#{version}/Majsoul_Plus-#{version}-darwin.dmg"
  appcast 'https://github.com/MajsoulPlus/majsoul-plus/releases.atom'
  name 'Majsoul Plus'
  homepage 'https://github.com/MajsoulPlus/majsoul-plus/'

  app 'Majsoul Plus.app'
end
