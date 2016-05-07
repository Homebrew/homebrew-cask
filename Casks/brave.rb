cask 'brave' do
  version '0.9.4dev'
  sha256 '8d8551fba2bd4e600faae1fbeeadc8259a5d2e37a967e0343188175c39228d7e'

  # github.com/brave/browser-laptop was verified as official when first introduced to the cask
  url "https://github.com/brave/browser-laptop/releases/download/v#{version}/Brave.dmg"
  appcast 'https://github.com/brave/browser-laptop/releases.atom',
          checkpoint: 'e188da1702a4294f1247595eecb0808ef0223a1a035f17cca20ed0bb696d1413'
  name 'Brave'
  homepage 'https://brave.com'
  license :mpl

  app 'Brave.app'
end
