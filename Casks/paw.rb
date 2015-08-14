cask :v1 => 'paw' do
  version '2.2.2'
  sha256 '80af2f3bfd973c920d636453f9a9fb8b1d7c3fbd461e72132c2bf12373d06254'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://luckymarmot-distribution.s3.amazonaws.com/paw/Paw-#{version}.zip"
  name 'Paw'
  homepage 'https://luckymarmot.com/paw'
  license :commercial

  app 'Paw.app'
end
