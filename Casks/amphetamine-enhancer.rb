cask 'amphetamine-enhancer' do
  version :latest
  sha256 :no_check

  url 'https://github.com/x74353/Amphetamine-Enhancer/raw/master/Releases/Current/Amphetamine%20Enhancer.dmg'
  name 'Amphetamine Enhancer'
  homepage 'https://github.com/x74353/Amphetamine-Enhancer'

  caveats <<~EOS
    "Requires Amphetamine 5.0+ from Mac App Store."
    "Remember to uninstall any scripts within the app before uninstalling"
  EOS
  
  app 'Amphetamine Enhancer.app'
end
