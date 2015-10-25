cask :v1 => 'hot-shots' do
  version '2.5'
  sha256 'ab8b108b6fba399e6adc6eb69b0964c3a86645a2c845d95817bbf03b61198a03'

  url "https://gngrwzrd.com/HotShots#{version.to_i}.zip"
  appcast 'https://www.gngrwzrd.com/hotshots2-appcast.xml',
          :sha256 => '33b5ced270f0b6f9d1989f1b6a6d86c62f88c7b5448ed93c86d079c0640fc845'
  name 'Hot Shots'
  homepage 'https://gngrwzrd.com/hotshots/'
  license :commercial

  app "Hot Shots #{version.to_i}.app"
end
