cask :v1 => 'stay' do
  version '1.2.3'
  sha256 'afe5abc2757bcee547a0d9ad8ebae55744ac197bc28c9fa28fc7987b9b512464'

  url "https://cordlessdog.com/stay/versions/Stay%20#{version}.zip"
  appcast 'http://cordlessdog.com/stay/appcast.xml',
          :sha256 => '43ace797403b9b44186e2f37c76912e3e18a45334ad4462577aa037e886ebd6c'
  homepage 'http://cordlessdog.com/stay/'
  license :unknown

  app 'Stay.app'
end
