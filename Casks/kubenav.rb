cask "kubenav" do
  version "3.5.0"

  if Hardware::CPU.intel?
    sha256 "500cf31408ed6c1704e3462a307b8f4f76ce25e64dccbd450a3bd8407c6cf06d"
    url "https://github.com/kubenav/kubenav/releases/download/#{version}/kubenav-darwin-amd64.zip",
        verified: "github.com/kubenav/kubenav/"
  else
    sha256 "4094c97f26034eae1d8a3caefa038ef72cd4b8f53363d8d71b23885653184c4b"
    url "https://github.com/kubenav/kubenav/releases/download/#{version}/kubenav-darwin-arm64.zip",
        verified: "github.com/kubenav/kubenav/"
  end
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"
end
