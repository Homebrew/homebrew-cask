cask 'livestream-producer' do
  version :latest
  sha256 :no_check

  url 'https://cdn.livestream.com/producer/LivestreamProducer.pkg'
  name 'Livestream Producer'
  homepage 'https://new.livestream.com/producer/software'

  pkg 'LivestreamProducer.pkg'

  uninstall pkgutil: [
                       'com.livestream.livestreamProducer.LivestreamProducer.pkg',
                       'com.livestream.livestreamProducer.ProcasterAudioRedirector.pkg',
                       'com.livestream.livestreamProducer.postflight.pkg',
                       'com.livestream.livestreamProducer.preflight.pkg',
                     ]
end
