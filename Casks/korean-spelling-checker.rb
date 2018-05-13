cask 'korean-spelling-checker' do
  version '1.7.4'
  sha256 'ae31c0cd618bb5fe4458673045b191844d41362e114708278f66c9c4ae149127'

  # github.com/miname/Korean-Spelling-Checker-Workflow was verified as official when first introduced to the cask
  url "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  appcast 'https://github.com/miname/Korean-Spelling-Checker-Workflow/releases.atom',
          checkpoint: '27cf805416800b7865de6796ff65db66732bc9e500a53a02c623d8b3a035e96b'
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
