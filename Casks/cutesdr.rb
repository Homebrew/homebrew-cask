cask 'cutesdr' do
  version '1.19'
  sha256 '41bd2ee10bc9dad3da8d3d541452f594b928823946d7a4c52f03164b9af84341'

  url "https://downloads.sourceforge.net/cutesdr/CuteSdr#{version.no_dots}.dmg"
  appcast 'https://sourceforge.net/projects/cutesdr/rss',
          checkpoint: '5619e8fccaa00f7ecbcd8726ea4942698c15d8dd760756cdf43de7da08bf595a'
  name 'CuteSDR'
  homepage 'https://sourceforge.net/projects/cutesdr'

  app 'cutesdr.app'
end
