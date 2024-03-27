cask "single-file" do
  version "2.0.14"
  sha256 :no_check

  url "https://github.com/gildas-lormeau/single-file-cli/releases/download/v2.0.14/single-file-aarch64-apple-darwin"
  name "single-file"
  desc "CLI tool for saving a faithful copy of a complete web page in a single HTML file"
  homepage "https://github.com/gildas-lormeau/single-file-cli/blob/master/README.MD"

  livecheck do
    url :url
    strategy :github_latest
  end

  binary "single-file"
end
