cask 'korean-spelling-checker' do
  version '1.7.1'
  sha256 'bbf7ebd57e29d83db827dbce46d8397d2de2eedd15ae1248a2d4bf556db5fc57'

  # github.com/miname/Korean-Spelling-Checker-Workflow was verified as official when first introduced to the cask
  url "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  appcast 'https://github.com/miname/Korean-Spelling-Checker-Workflow/releases.atom',
          checkpoint: 'a51b690a1fa84faae276e0d7ba92837346d99a6824cd6863bdc2b99b4fe70599'
  name '한국어 맞춤법 검사기'
  homepage 'http://appletree.or.kr/google-chrome-extensions/'

  service "Korean-Spelling-Checker-Workflow-#{version}/✔ 선택한 글의 한국어 맞춤법 검사하기.workflow"

  uninstall delete: '~/Library/Services/✔ 선택한 글의 한국어 맞춤법 검사하기.workflow'

  caveats do
    <<-EOS.undent
      #{token} only works when you install it manually via Service Installer,
      so you may need to run the installer with

        open '~/Library/Services/✔ 선택한 글의 한국어 맞춤법 검사하기.workflow'
    EOS
  end
end
