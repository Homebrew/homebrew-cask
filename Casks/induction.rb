cask :v1 => 'induction' do
  version 'alpha-28'
  sha256 'b209e4ca234749435c8e014ec79b2bc0bdcfe626ff4cbbeb6b3ee51cd1f2e68c'

  url "https://mesmerize.s3.amazonaws.com/Induction/Induction-#{version.sub(%r{^.*?(\d+)$},'\1')}.zip"
  # appcast URL is down
  # appcast 'https://induction.mesmerizeapp.com/'
  homepage 'http://inductionapp.com/'
  license :unknown

  app 'Induction.app'
end
