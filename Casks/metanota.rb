cask :v1 => 'metanota' do
  version '2.4.1'
  sha256 'baac3496d1fe723ef6cb905aca9a718aac828c56ef4b64cde171bac340bbc124'

  # ge.tt is the official download host per the vendor homepage
  url "http://w092697.blob1.ge.tt/streams/6GNd4cW/Metanota.app%20-%20#{version}.zip?sig=-Ur6rw4x_7U7VV2rwCx9mMSFkaAWOXvBsNQ&type=download"
  appcast 'https://s3.amazonaws.com/sparkle.metanota.com/appcast.xml',
          :sha256 => '72ce5639aae8d21dd40a68dc518382b49d29cc8518ff28cfadb662f21b9fdef6'
  name 'Metanota'
  homepage 'http://www.metanota.com/'
  license :freemium

  app 'Metanota.app'
end
