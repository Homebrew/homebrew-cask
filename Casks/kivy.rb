cask 'kivy' do
  version '1.9.1'
  sha256 'e94546ef63d0fb8e2b8a297aac022f6cc53f047a30966a7b709d541fe57f15f4'

  url "https://kivy.org/downloads/#{version}/Kivy-#{version}-osx-python3.7z"
  appcast 'https://kivy.org/downloads/',
          checkpoint: '7c0b6faeba2b6662ce8b963f05f73ae9dc8faf5cc799870434fe92f634e6a1e5'
  name 'Kivy'
  homepage 'https://kivy.org/'

  depends_on formula: 'unar'

  # Renamed as suggested by developer: https://kivy.org/docs/installation/installation-osx.html#installation-on-os-x
  app 'Kivy3.app', target: 'Kivy.app'
  binary "#{appdir}/Kivy.app/Contents/Resources/script", target: 'kivy'
end
