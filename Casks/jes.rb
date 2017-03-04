cask 'jes' do
  version '5.020'
  sha256 'e09b3412f2c56bd8dc8fd8c4b3561aeb3f760682deb7b3b6277734c26df8d660'

  url "https://github.com/gatech-csl/jes/releases/download/#{version}/jes-#{version}-macosx.zip"
  appcast 'https://github.com/gatech-csl/jes/releases.atom',
          checkpoint: '89cbf0688db38705320d068184ab288f79a4171edd257232ccaacda84f94f389'
  name 'JES'
  homepage 'https://github.com/gatech-csl/jes'

  app 'JES.app'
end
