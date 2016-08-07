cask 'review-sherlock' do
  version :latest
  sha256 :no_check

  url 'https://www.rbcafe.com/download/reviewsherlock.zip'
  name 'Review Sherlock'
  homepage 'https://www.rbcafe.com/softwares/review-sherlock/'
  license :commercial

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :intel

  app 'Review Sherlock.app'
end
