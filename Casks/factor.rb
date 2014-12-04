cask :v1 => 'factor' do
  version '0.97'
  sha256 '218f21005a6aeef404365da87b0aabd424387f393df120ca98b50fda5db8a674'

  url "http://downloads.factorcode.org/releases/#{version}/factor-macosx-x86-64-#{version}.dmg"
  homepage 'http://factorcode.org/'
  license :bsd

  app 'factor/Factor.app'
end
