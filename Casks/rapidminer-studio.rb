cask :v1 => 'rapidminer-studio' do
  version '6.3.0'
  sha256 '171c0d881bcb293cb90af4ef0aed4acccd695b0c5d513724263aff1943d98826'

  url "https://s3.amazonaws.com/rapidminer.releases/rapidminer-studio/#{version}/rapidminer-studio-#{version}.zip"
  name 'RapidMiner'
  name 'RapidMiner Studio'
  homepage 'https://rapidminer.com'
  license :commercial

  depends_on :macos => '>= :lion'

  app 'rapidminer-studio/RapidMiner Studio.app'

  caveats <<-EOS.undent
    RapidMiner Studio requires at least Java 7. To install the newest Java, type
      brew cask install java
  EOS
end
