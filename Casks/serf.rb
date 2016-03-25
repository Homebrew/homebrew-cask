cask 'serf' do
  version '0.7.0'
  sha256 '30ab3f2fe65cbef0ce1cefa27c7aa27043fc3634c52a2f46d8921964b1ab2380'

  # hashicorp.com/serf was verified as official when first introduced to the cask
  url "https://releases.hashicorp.com/serf/#{version}/serf_#{version}_darwin_amd64.zip"
  appcast 'https://github.com/hashicorp/serf/releases.atom',
          checkpoint: 'ddc3f79c2b3e97a00f88d514dda17428961eccefd74afeb8470a0e458af33c7d'
  name 'Serf'
  homepage 'https://www.serfdom.io/'
  license :mpl

  binary 'serf'
end
