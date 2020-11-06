cask "phantomjs" do
  version "2.1.1"
  sha256 "538cf488219ab27e309eafc629e2bcee9976990fe90b1ec334f541779150f8c1"

  # bitbucket.org/ariya/phantomjs/ was verified as official when first introduced to the cask
  url "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-#{version}-macosx.zip"
  name "PhantomJS"
  homepage "https://phantomjs.org/"

  binary "phantomjs-#{version}-macosx/bin/phantomjs"

  caveats do
    discontinued
  end
end
