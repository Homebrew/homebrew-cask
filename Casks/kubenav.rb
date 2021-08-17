cask "kubenav" do
  version "3.7.0"

  if Hardware::CPU.intel?
    sha256 "550bb6289741ef1b7fce06478c117bbcbe486db5c9362ee3a3a2afb45720fe90"
    url "https://github.com/kubenav/kubenav/releases/download/#{version}/kubenav-darwin-amd64.zip",
        verified: "github.com/kubenav/kubenav/"
  else
    sha256 "82c9ceaaaedffa3db6f2a274077a4fbff6e74b1e855c659e2f21dfdc1b78043d"
    url "https://github.com/kubenav/kubenav/releases/download/#{version}/kubenav-darwin-arm64.zip",
        verified: "github.com/kubenav/kubenav/"
  end

  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"
end
