cask 'kivy' do
  version '1.9.1'
  sha256 'e94546ef63d0fb8e2b8a297aac022f6cc53f047a30966a7b709d541fe57f15f4'

  url "https://kivy.org/downloads/#{version}/Kivy-#{version}-osx-python3.7z"
  appcast 'https://kivy.org/downloads/',
          checkpoint: '3d01457f7479545c936856c7f259e5c9fcb9570c2678be17cc05ea475aab73c5'
  name 'Kivy'
  homepage 'https://kivy.org/'

  depends_on formula: 'unar'

  # Renamed as suggested by developer: https://kivy.org/docs/installation/installation-osx.html#installation-on-os-x
  app 'Kivy3.app', target: 'Kivy.app'
  binary "#{appdir}/Kivy.app/Contents/Resources/script", target: 'kivy'
end
