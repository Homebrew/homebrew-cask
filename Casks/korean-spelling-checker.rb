cask 'korean-spelling-checker' do
  version '1.6.0'
  sha256 '03fba7c4562a419e14221f5589f27efdd49d595f84c2528e09fa23c204097c2f'

  # github.com/miname/Korean-Spelling-Checker-Workflow was verified as official when first introduced to the cask
  url "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  appcast 'https://github.com/miname/Korean-Spelling-Checker-Workflow/releases.atom',
          checkpoint: '1f8d76c232adad42c13d25850e2341b8979c07c5b989deb8c0c1a253c7b2d36a'
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
