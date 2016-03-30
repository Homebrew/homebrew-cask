cask 'graphsketcher' do
  version 'v2.0_test_46'
  sha256 '34fe6fc319b2fcfe0bf51e02bc05d020b2867ff1ee20587becb60d7e67309be6'

  url "https://github.com/graphsketcher/GraphSketcher/releases/download/#{version}/GraphSketcher.zip"
  appcast 'https://github.com/graphsketcher/GraphSketcher/releases.atom',
          checkpoint: '509810b51b1bbc3927836e7a77ea4f339a530cf00661bd3ad099993e1c63e4e6'
  name 'GraphSketcher'
  homepage 'https://github.com/graphsketcher/GraphSketcher'
  license :mit

  app 'GraphSketcher/GraphSketcher.app'
end
