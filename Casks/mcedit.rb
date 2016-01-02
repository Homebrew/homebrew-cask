cask 'mcedit' do
  version '1.5.0.0'
  sha256 'b65c0d742b37cdae7f140496adab2a283fbba1ace5f475c0e074d1f8505cf9da'

  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          :sha256 => '295543137c5a16cf5c9539292b7d25504e9fe898df3299814a79448839563f99'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
