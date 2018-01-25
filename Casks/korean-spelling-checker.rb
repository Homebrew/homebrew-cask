cask 'korean-spelling-checker' do
  version '1.7.2'
  sha256 'ab217660b483797f7da1c20a45c517bdab2a6618ec4a4f766ed9fb424dbd1dae'

  # github.com/miname/Korean-Spelling-Checker-Workflow was verified as official when first introduced to the cask
  url "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  appcast 'https://github.com/miname/Korean-Spelling-Checker-Workflow/releases.atom',
          checkpoint: 'ee085aaf35355f83bed138768821343ac6e1229ef79113a0b29b274b126915ff'
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
