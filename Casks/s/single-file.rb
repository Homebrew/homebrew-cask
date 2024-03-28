cask "single-file" do
  arch arm: "aarch64-apple-darwin", intel: "x86_64-apple-darwin"
  version "2.0.14"
  sha256 :no_check

  url "https://github.com/gildas-lormeau/single-file-cli/releases/download/v#{version}/single-file-#{arch}"
  name "single-file"
  desc "CLI tool for saving a faithful copy of a complete web page in a single HTML file"
  homepage "https://github.com/gildas-lormeau/single-file-cli/blob/master/README.MD"

  binary "single-file-#{arch}"
end
