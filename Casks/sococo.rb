cask :v1 => 'sococo' do
  version '0.2.3-7127'
  sha256 'a87e533f63567d3334491e475bfc1ead15eb44f87b0700f2076d623df05a65a1'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://s.sococo.com.s3-website-us-east-1.amazonaws.com/rs/client/mac/Sococo-#{version}.dmg"
  name 'Sococo'
  homepage 'https://www.sococo.com/'
  license :freemium

  app 'Sococo.app'

  depends_on :macos => '>= :lion'
end
