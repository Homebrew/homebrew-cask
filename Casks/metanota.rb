cask :v1 => 'metanota' do
  version '2.4.1'
  sha256 'baac3496d1fe723ef6cb905aca9a718aac828c56ef4b64cde171bac340bbc124'

  url "https://j.mp/metanota-#{version.gsub('.','-')}"
  appcast 'https://s3.amazonaws.com/sparkle.metanota.com/appcast.xml',
          :sha256 => '72ce5639aae8d21dd40a68dc518382b49d29cc8518ff28cfadb662f21b9fdef6'
  homepage 'http://www.metanota.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Metanota.app'
end
