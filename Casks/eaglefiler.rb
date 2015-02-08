cask :v1 => 'eaglefiler' do
  version '1.6.4'
  sha256 'e1ff3a18c9f9f140f6943dc567877261f5f87c9e46f67a62ab539af0ededf389'

  url "http://c-command.com/downloads/EagleFiler-#{version}.dmg"
  name 'EagleFiler'
  homepage 'http://c-command.com/eaglefiler/'
  license :commercial

  app 'EagleFiler.app'
end
