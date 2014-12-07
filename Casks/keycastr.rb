cask :v1 => 'keycastr' do
  version '0.8.2-bezel'
  sha256 '4b613caf54e474c3b5a6ad802252787ce0b3c3451b5777c7a66214bd0bb53905'

  # github.com/lqez is the official download host per the vendor homepage
  url "https://github.com/lqez/keycastr/releases/download/#{version}/KeyCastr.zip"
  homepage 'https://github.com/keycastr/keycastr'
  license :oss

  app 'KeyCastr.app'

  # todo: replace with new assistive_devices stanza
  caveats do
    <<-EOS.undent
      To use #{@cask}, you may need to give it access to assistive
      devices (Accessibility).  For OS X Mavericks and Above:

        System Preferences / Security & Privacy / Privacy / Accessibility
    EOS
  end
end
