cask 'korean-spelling-checker' do
  version '1.4.1'
  sha256 'f38e74be69f86c4c56aa60dfccb189e666979f519f69acbc0f5700442447661f'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  name '한국어 맞춤법 검사기'
  homepage 'http://appletree.or.kr/google-chrome-extensions/'
  license :mit

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
