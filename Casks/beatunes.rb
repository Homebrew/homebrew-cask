cask :v1 => 'beatunes' do
  version '4.0.25'
  sha256 'f3afa2ae0c0397b6e13703e66bdf2a99182727b4d8b8e75dd6a81b9f356c0c15'

  url "http://coxy.beatunes.com/download/beaTunes-#{version.gsub('.','-')}-osx.dmg"
  name 'beaTunes'
  homepage 'https://www.beatunes.com'
  license :closed

  depends_on :macos => '>= :lion'
  depends_on :arch => :x86_64

  app 'beaTunes4.app'
end
