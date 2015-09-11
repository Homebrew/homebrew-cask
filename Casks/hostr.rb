cask :v1 => 'hostr' do
  version '0.8.0'
  sha256 '89e8b6a4d0168fb05520ff9ac1f69d378dade59a883034aaa549398c039faeed'

  url "https://hostr.co/apps/mac/Hostr-#{version}.zip"
  name 'Hostr'
  appcast 'https://hostr.co/updaters/mac.xml',
          :sha256 => '74ea25a1e3444e616e4381ec322bd9f6f7dd15b86d08af9b31ccf5e3ff766df7'
  homepage 'https://hostr.co/'
  license :gratis

  app 'Hostr.app'
end
