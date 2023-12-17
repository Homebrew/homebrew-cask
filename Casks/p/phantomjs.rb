cask "phantomjs" do
  version "2.1.1"
  sha256 "538cf488219ab27e309eafc629e2bcee9976990fe90b1ec334f541779150f8c1"

  url "https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-#{version}-macosx.zip",
      verified: "bitbucket.org/ariya/phantomjs/"
  name "PhantomJS"
  desc "Headless web browser"
  homepage "https://phantomjs.org/"

  deprecate! date: "2023-12-17", because: :discontinued

  binary "phantomjs-#{version}-macosx/bin/phantomjs"

  zap trash: "~/Library/Application Support/Ofi Labs/PhantomJS/"
end
