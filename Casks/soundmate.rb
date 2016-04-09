cask 'soundmate' do
  version '3.0.5'
  sha256 '5d36a28a34f5c6877e3073730104035fbf991298d632fe12bdadc430f6b133a2'

  url "http://www.icyarrow.com/soundmate/SoundMate_v#{version}.zip"
  appcast 'http://www.icyarrow.com/soundmate/soundmatecast.xml',
          checkpoint: '1589c380efe1813e320b0b27e3800dbb8ba7014a9f26dda37652ba256c889eda'
  name 'soundmate'
  homepage 'http://www.icyarrow.com/soundmate'
  license :commercial

  app 'SoundMate.app'
end
