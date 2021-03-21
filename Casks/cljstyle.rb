cask "cljstyle" do
  version "0.14.0"
  sha256 "6708578e7bae6a52ec1603a11ea302ed17c09d8b39bc20b19ff4dff9627d718a"

  url "https://github.com/greglook/cljstyle/releases/download/#{version}/cljstyle_#{version}_macos.tar.gz"
  name "cljstyle"
  desc "Tool for formatting Clojure code"
  homepage "https://github.com/greglook/cljstyle"

  binary "cljstyle"
end
