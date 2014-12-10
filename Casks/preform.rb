cask :v1 => 'preform' do
  version '1.7.5'
  sha256 '1cba63d07ac8d872d76e7df7a3a3c727cfbcdd42e77260ffc47b636d315a5b83'

  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.sub(%r{\.(\d+)$},'')}/PreForm_#{version.sub(%r{\.(\d+)$},'_\1')}.dmg"
  homepage 'http://formlabs.com/en/products/preform/'
  license :unknown    # todo: improve this machine-generated value

  app 'PreForm.app'
end
