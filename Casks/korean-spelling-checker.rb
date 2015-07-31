cask :v1 => 'korean-spelling-checker' do
  version '1.2.1'
  sha256 'd06e8f563357bc122ab921503e227241646f3b3db932a374236886987ebb07ab'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/miname/Korean-Spelling-Checker-Workflow/archive/#{version}.tar.gz"
  name '한국어 맞춤법 검사기'
  homepage 'http://appletree.or.kr/google-chrome-extensions/'
  license :mit

  service '✔ 선택한 글의 한국어 맞춤법 검사하기.workflow'
end
