cask 'korean-spelling-checker' do
  version '1.7.0'
  sha256 'a26723814722ef3c381f822321ca9ba9ef3885dab6071a1675bf12a9c0ad2142'

  # github.com/miname/Korean-Spelling-Checker-Workflow was verified as official when first introduced to the cask
  url "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  appcast 'https://github.com/miname/Korean-Spelling-Checker-Workflow/releases.atom',
          checkpoint: '9c4a731a6084689385b3e57dc77ba4dd3b5ca2e969a4ad601c13bc27d8f450d4'
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
