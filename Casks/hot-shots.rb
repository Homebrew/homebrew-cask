cask :v1 => 'hot-shots' do
  version '2.2'
  sha256 '51f055625e3e5d7856e2aaf9a7f7559fd66b3acca51304bb8f29fac716530f88'

  url "https://gngrwzrd.com/HotShots#{version.to_i}.zip"
  appcast 'https://www.gngrwzrd.com/hotshots2-appcast.xml',
          :sha256 => '33b5ced270f0b6f9d1989f1b6a6d86c62f88c7b5448ed93c86d079c0640fc845'
  name 'Hot Shots'
  homepage 'https://gngrwzrd.com/hotshots/'
  license :commercial

  app "Hot Shots #{version.to_i}.app"
end
