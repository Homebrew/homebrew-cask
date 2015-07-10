cask :v1 => 'korean-spelling-checker' do
  version :latest
  sha256 :no_check

  url 'http://appletree.or.kr/automator/korean-spelling-checker-workflow.zip'
  name '한국어 맞춤법 검사기'
  homepage 'http://appletree.or.kr/google-chrome-extensions/'
  license :gratis

  service '✔ 선택한 글의 한국어 맞춤법 검사하기.workflow'
end
