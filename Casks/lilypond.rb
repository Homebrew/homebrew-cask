cask 'lilypond' do
  version '2.18.2-1'

  if Hardware::CPU.type == :ppc
    sha256 '4044931924c51b4b511b7e4597d7184b70ec2e5f0df143b8179d10825d828f4d'
    # linuxaudio.org is the official download host per the vendor homepage
    url "http://download.linuxaudio.org/lilypond/binaries/darwin-ppc/lilypond-#{version}.darwin-ppc.tar.bz2"
  else
    sha256 '0009bf234db6a598e30940ae9a5cef50ffe939992c9bf0c7959ecd9c0d179c80'
    # linuxaudio.org is the official download host per the vendor homepage
    url "http://download.linuxaudio.org/lilypond/binaries/darwin-x86/lilypond-#{version}.darwin-x86.tar.bz2"
  end

  name 'LilyPond'
  homepage 'http://lilypond.org'
  license :gpl

  app 'LilyPond.app'
end
