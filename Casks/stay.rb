cask :v1 => 'stay' do
  version '1.2.4'
  sha256 'b7b3062fdec9b8b7a5be57d0a03dfec3aefe20fa8fd19e64da8ebbd0078f24b0'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.zip"
  appcast 'http://cordlessdog.com/stay/appcast.xml',
          :sha256 => '43ace797403b9b44186e2f37c76912e3e18a45334ad4462577aa037e886ebd6c'
  name 'Stay'
  homepage 'http://cordlessdog.com/stay/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Stay.app'
end
