cask "drovio" do
  arch = Hardware::CPU.intel? ? "macos" : "macos_silicon"

  version "3.2.2"

  if Hardware::CPU.intel?
    sha256 "6c2f48854765ebead8eda93df0e4993029a3d6b047f1014753bd2ac032b8a5e7"
  else
    sha256 "9a611dbfb3ab917c4d0cf672941e2009fe6c9d767ba2132ba4a3fa9d7620fa77"
  end

  url "https://repository.drovio.com/stable/drovio/#{arch}/#{version.major}.x/#{version}/drovio.dmg"
  name "Drovio"
  desc "Remote pair programming and team collaboration tool"
  homepage "https://www.drovio.com/"

  livecheck do
    url "https://repository.drovio.com/stable/drovio/#{arch}/latest_version/release.json"
    regex(/"version"\s*:\s*"(\d+(?:\.\d+)+)"/i)
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "Drovio.app"

  zap trash: "~/Library/Application Support/Drovio"
end
