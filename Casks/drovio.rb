cask "drovio" do
  arch = Hardware::CPU.intel? ? "macos" : "macos_silicon"

  version "3.2.1"

  if Hardware::CPU.intel?
    sha256 "a491a8625f1caf14bc97623d68febb30b683696bbbb1605269f661052770c7c7"
  else
    sha256 "a2e6575a38ae4659db69f5021583bca48c6b8ae72b6935de8785d8e1d42f5865"
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
