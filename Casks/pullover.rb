cask 'pullover' do
  version '1.3.0'
  sha256 '2e0805d6d358c76ffc776f0641b2e95c1cdd4696b5bc13361b8af990e3708787'

  url "https://github.com/cgrossde/Pullover/releases/download/#{version}/Pullover_#{version}.dmg"
  appcast 'https://github.com/cgrossde/Pullover/releases.atom',
          checkpoint: '997ff27af5c6af7a2339d194cbfc562e058104d442e302208eec560296da8647'
  name 'Pullover'
  homepage 'https://github.com/cgrossde/Pullover'

  app 'pullover.app'
end
