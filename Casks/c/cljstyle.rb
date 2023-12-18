cask "cljstyle" do
  version "0.15.0"
  sha256 "c834be954f37547af599ad7f7ebbe84f0da6683df7f6bbe5d356396ca651f48d"

  url "https://github.com/greglook/cljstyle/releases/download/#{version}/cljstyle_#{version}_macos.zip"
  name "cljstyle"
  desc "Tool for formatting Clojure code"
  homepage "https://github.com/greglook/cljstyle"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "cljstyle"
end
