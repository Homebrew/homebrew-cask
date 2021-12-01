cask "cron" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"
  version "1.106.0"

  url "https://download.cron.com/mac/dmg/#{arch}"
  if Hardware::CPU.intel?
    sha256 "bba4067f8c49dd13564558840f6aa79c9275e9b49002c8f0f8d445d22b10e47d"
  else
    sha256 "3d5c156e5762b1c0a86691f87bd07d9aec3e5ad632ceb9c26f816ae73188f127"
  end

  name "cron"
  desc "Next-generation calendar for professionals and teams"
  homepage "https://cron.com/"

  livecheck do
    url :url
    strategy :header_match do |headers|
      headers["content-disposition"][/Cron (\d+(?:\.\d+)+)-[a-z1-9]+\.dmg/i, 1]
    end
  end

  app "Cron.app"

  zap trash: [
    "~/Library/Application Support/Cron",
  ]
end
