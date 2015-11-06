cask :v1 => 'drop-to-gif' do
  version '1.25'
  sha256 '2d137b0dccde1087d619af41edb48bf4f1b7f7badcc7cafa8ae3f2770d843824'

  url "https://github.com/mortenjust/droptogif/releases/download/#{version}/Drop.to.GIF.zip"
  appcast 'https://github.com/mortenjust/droptogif/releases.atom'
  name 'Drop to GIF'
  homepage 'http://mortenjust.github.io/droptogif'
  license :oss

  app 'Drop to GIF.app'
end
