cask :v1 => 'selflanguage-self-control' do
  version '4.5.0'
  sha256 'fa5edc50ec517c06547e8c57246075f1fcd4ad98b5b9c681b9a60e357f4d3f04'

  url "http://files.selflanguage.org/releases/#{version.gsub(/\.\d$/, '')}/Self-#{version}.dmg"
  homepage 'http://selflanguage.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Self Control.app'
  binary 'Clean.snap', :target => '/Users/Shared/Self/Clean.snap'
  caveats 'A clean snapshot is available in /Users/Shared/Self/Clean.snap'
end
