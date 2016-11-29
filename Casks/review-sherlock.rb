cask 'review-sherlock' do
  version :latest
  sha256 :no_check

  url 'http://www.rbcafe.com/download/reviewsherlock.zip'
  name 'Review Sherlock'
  homepage 'http://www.rbcafe.com/software/review-sherlock/'

  depends_on macos: '>= :mountain_lion'
  depends_on arch: :intel

  app 'Review Sherlock.app'
end
