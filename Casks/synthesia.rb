cask :v1 => 'synthesia' do
  version '9.0'
  sha256 '4b3ed729994c4a76ca0bb777516f0737f218eb033d9e02e8af2a5a1a531f6ce8'

  url "https://synthesia.s3.amazonaws.com/files/Synthesia-#{version}.dmg"
  homepage 'http://www.synthesiagame.com'
  license :unknown

  app 'Synthesia.app'
  app 'SynthesiaConfig.app'
end
