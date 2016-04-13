cask 'brave' do
  version '0.9.1dev'
  sha256 'df0eb7f089f920dbab6f0e4f86916f319220b9d8d5775173aefdbfeaaa12bc8b'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: '51b9babf38c93bd24920473d9e4e7bcefbfeb7a58fe0e42301dae86bf8323140'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
