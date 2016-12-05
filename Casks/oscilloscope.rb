cask 'oscilloscope' do
  version '1.0.6'
  sha256 '41f9bd17d237fd2425fb81a68e42a6191f13e9ed1a781c8d6110918d16101eb3'

  url "https://github.com/kritzikratzi/Oscilloscope/releases/download/#{version}/oscilloscope-#{version}-osx.zip"
  appcast 'https://github.com/kritzikratzi/Oscilloscope/releases.atom',
          checkpoint: '530377c02fef543f61895a50925a3becdc8784b881e30113b5d7b6813bdbc3a4'
  name 'Oscilloscope'
  homepage 'https://github.com/kritzikratzi/Oscilloscope'

  app 'Oscilloscope/Oscilloscope.app'
end
