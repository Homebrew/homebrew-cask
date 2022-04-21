cask "drovio" do
  arch = Hardware::CPU.intel? ? "macos" : "macos_silicon"

  version "3.2.5"

  if Hardware::CPU.intel?
    sha256 "e1af6cc47da5a10a7d3792ee2113f2fc9980af0d35a08e194f2b08262acb0b1f"
  else
    sha256 "493f8e9c2380ffed82ebff621b0a877afd40932a54d558e7d01938cc295b28f6"
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
