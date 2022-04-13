cask "drovio" do
  arch = Hardware::CPU.intel? ? "macos" : "macos_silicon"

  version "3.2.4"

  if Hardware::CPU.intel?
    sha256 "cd989df4768fff060c15cf1f434cf935ea921a7bc017b17502d9e7aa5e648b3b"
  else
    sha256 "0c6333b1125542b51111e4b99a5fe00948d0672bbfa01ba1062a30b1df7886cf"
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
