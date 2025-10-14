cask "proxymock" do
  arch arm: "arm64", intel: "amd64"

  version "2.4.33"
  sha256 arm:   "82566a65a512af2d08b63d3b628a3d7f648ccd7ee2dea50b125c72cb4016ea94",
         intel: "3bf4eb32aa54b02bb2643743b9d012c6aae0126a0cfbffd90bcdfdb7c8afccc9"

  url "https://downloads.speedscale.com/proxymock/v#{version}/proxymock-darwin-#{arch}",
      verified: "downloads.speedscale.com/"
  name "proxymock"
  desc "Automatically create isolation tests and realistic service mocks"
  homepage "https://proxymock.io/"

  livecheck do
    url "https://downloads.speedscale.com/proxymock/latest"
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  binary "proxymock-darwin-#{arch}", target: "proxymock"

  zap trash: "~/.proxymock"

  caveats do
    <<~EOS
      If this is a fresh proxymock install, you must run `proxymock init`.
      You can get an api key from https://docs.speedscale.com/proxymock/getting-started/api-key/
    EOS
  end
end
