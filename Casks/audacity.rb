cask :v1 => 'audacity' do
  version '2.0.6'
  sha256 'e51ff7c41b23e707bb8efac9965fe8ac27338792dc2b149138be30a3760c0067'

  url "http://downloads.sourceforge.net/project/audacity/audacity/#{version}/audacity-macosx-ub-#{version}.dmg"
  homepage 'http://audacity.sourceforge.net/'
  license :gpl

  app 'Audacity/Audacity.app'
end
