cask 'dawnlabs-alchemy' do
  version '0.4.0'
  sha256 '07be3faec43e6387a578af4750ad7a7d50010756a477e670ce15e8adb7615477'

  url "https://github.com/dawnlabs/alchemy/releases/download/#{version}/Alchemy-mac.zip"
  appcast 'https://github.com/dawnlabs/alchemy/releases.atom',
          checkpoint: 'f10152223872394457cbe75462921329b6926660268a62d6c636c2d918985249'
  name 'Alchemy'
  homepage 'https://github.com/dawnlabs/alchemy'

  app 'Alchemy.app'

  uninstall signal: ['TERM', 'com.electron.alchemy']
end
