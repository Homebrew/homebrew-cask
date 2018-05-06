cask 'korean-spelling-checker' do
  version '1.7.3'
  sha256 '3d820f0b2e07ecbe56e61ac72ea6a65f94b3cfff8118ee7f21af2a73e1b24ed6'

  # github.com/miname/Korean-Spelling-Checker-Workflow was verified as official when first introduced to the cask
  url "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  appcast 'https://github.com/miname/Korean-Spelling-Checker-Workflow/releases.atom',
          checkpoint: '07120e413964d3c04c5d265ea2ecbf447facab97705b62f8472e99e1c21cfee9'
  name '한국어 맞춤법 검사기'
  homepage 'https://appletree.or.kr/google-chrome-extensions/'

  service "Korean-Spelling-Checker-Workflow-#{version}/✔ 선택한 글의 한국어 맞춤법 검사하기.workflow"

  uninstall delete: '~/Library/Services/✔ 선택한 글의 한국어 맞춤법 검사하기.workflow'

  caveats <<~EOS
    #{token} only works when you install it manually via Service Installer,
    so you may need to run the installer with

      open '~/Library/Services/✔ 선택한 글의 한국어 맞춤법 검사하기.workflow'
  EOS
end
