cask 'framer' do
  version '17919,1519228836'
  sha256 '2619c398b7107c6ba4db467a84b3df6685237a309ede26b3f5352fc166819b6c'

  # devmate.com/com.motif.framer was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.motif.framer/#{version.before_comma}/#{version.after_comma}/FramerStudio-#{version.before_comma}.zip"
  appcast 'https://updates.devmate.com/com.motif.framer.xml',
          checkpoint: '617837e1f58f1ba25599c723fc83aa0381e433b7dc22cd7070b9916241126a6b'
  name 'Framer'
  homepage 'https://framer.com/'

  app 'Framer.app'
end
