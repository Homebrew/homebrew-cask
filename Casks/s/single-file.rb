cask "single-file" do
  version "2.0.10"
  sha256 "48f4c81b3bf76ab4a2ec1672056fefba73ddceed34fd436c77b6a45ba50de96b"

  url "https://github.com/gildas-lormeau/single-file-cli/releases/download/v#{version}/single-file-aarch64-apple-darwin"
  name "single-file"
  desc "CLI tool for saving a faithful copy of a complete web page in a single HTML file"
  homepage "https://github.com/gildas-lormeau/single-file-cli/blob/master/README.MD"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "single-file"
end
