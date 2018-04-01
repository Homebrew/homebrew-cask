cask 'kamakiri' do
  version '1.0.9-32'
  sha256 '5634ce3166f0f613490bae043a3ac4376c18f35a6066829f90ebc23b7ec44f4f'

  url "https://mochidev.com/appresources/downloads/Kamakiri%20#{version.sub(%r{-.*$}, '')}%20(#{version.sub(%r{^.*-}, '')}).zip"
  appcast 'https://mochidev.com/appresources/updates/kamakiridd.xml',
          checkpoint: '5ac217895c1f06fb9b30b67b46630b8e26b4d3a7cbf9102cd38c12b521d94197'
  name 'Kamakiri'
  homepage 'https://mochidev.com/apps/kamakiri/'

  app 'Kamakiri.app'
end
