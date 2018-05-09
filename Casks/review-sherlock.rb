cask 'review-sherlock' do
  version :latest
  sha256 :no_check

  url 'https://www.rbcafe.com/download/reviewsherlock.zip',
      user_agent: :fake
  name 'Review Sherlock'
  homepage 'https://www.rbcafe.com/software/review-sherlock/'

  depends_on macos: '>= :mountain_lion'

  app 'Review Sherlock.app'
end
