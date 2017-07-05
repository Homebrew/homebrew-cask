cask 'downie' do
  version '2.9.4,1496'
  sha256 '723e0d9d0dfe8dc553f80c870818a0f3a0e6045997c12178217cf7d463e528f2'

  url "https://trial.charliemonroe.net/downie/Downie_#{version.after_comma}.zip"
  appcast 'https://trial.charliemonroe.net/downie/updates_2.0.xml',
          checkpoint: '824fcfcc1368b40fc75e67b73f4b669f787fc74f0b82c59b2fed8d555c2489e2'
  name 'Downie'
  homepage 'https://software.charliemonroe.net/downie.php'

  depends_on macos: '>= :yosemite'

  app 'Downie.app'
end
