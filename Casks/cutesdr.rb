cask 'cutesdr' do
  version '1.19'
  sha256 '41bd2ee10bc9dad3da8d3d541452f594b928823946d7a4c52f03164b9af84341'

  url "https://downloads.sourceforge.net/cutesdr/CuteSdr#{version.no_dots}.dmg"
  appcast 'https://sourceforge.net/projects/cutesdr/rss',
          checkpoint: 'c3368736929f4007a9b9c474ee2089f9c19da1d2fa3f9db73546e6d3262bcf87'
  name 'CuteSDR'
  homepage 'https://sourceforge.net/projects/cutesdr/'

  app 'cutesdr.app'
end
