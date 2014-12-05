cask :v1 => 'keycastr' do
  version '0.8.2-bezel'
  sha256 '4b613caf54e474c3b5a6ad802252787ce0b3c3451b5777c7a66214bd0bb53905'

  # github.com/lqez is the official download host per the vendor homepage
  url "https://github.com/lqez/keycastr/releases/download/#{version}/KeyCastr.zip"
  homepage 'https://github.com/keycastr/keycastr'
  license :oss

  app 'KeyCastr.app'

  # todo: transitional, replace #{self.name...} with #{token}
  caveats <<-EOS.undent
    For OSX 10.9 or later, #{self.name.sub(/^KlassPrefix/,'').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').gsub(/([a-zA-Z\d])([A-Z])/,'\1-\2').downcase} requires that you "Enable access for assistive devices".
    The app must be dragged into the Accessibility list in System Preferences.
    See https://github.com/sdeken/keycastr/issues/5
  EOS
end
