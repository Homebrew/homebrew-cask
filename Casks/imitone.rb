cask :v1 => 'imitone' do
  version '0.7.0'
  sha256 '86179bdc32364bb85cdeb04d0ec1d8cb8bee4cfc1dd0f15a0656412a1f9c74dc'

  url "http://imitone.com/beta/imitone-#{version}.dmg"
  name 'imitone'
  homepage 'http://imitone.com/'
  license :commercial

  app 'imitone.app'
end
