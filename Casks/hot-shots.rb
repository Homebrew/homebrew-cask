cask :v1 => 'hot-shots' do
  version '2.2'
  sha256 '51f055625e3e5d7856e2aaf9a7f7559fd66b3acca51304bb8f29fac716530f88'

  url "https://gngrwzrd.com/HotShots#{version.to_i}.zip"
  name 'Hot Shots'
  homepage 'https://gngrwzrd.com/hotshots/'
  license :commercial

  app "Hot Shots #{version.to_i}.app"
end
