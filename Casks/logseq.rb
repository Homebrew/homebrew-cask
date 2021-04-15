cask "logseq" do
  version "0.0.19"

  if Hardware::CPU.intel?
    sha256 "5edf24b78807faaa0a6296f8d666278ad216dd10cec9c627ca71424c434b416d"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-x64-#{version}.dmg"
  else
    sha256 "1c308555f5484ca17f779330097429f9ab5144a4b3b1f1e0e1ff7c2450457174"
    url "https://github.com/logseq/logseq/releases/download/#{version}/logseq-darwin-arm64-#{version}.dmg"
  end

  name "Logseq"
  desc "Privacy-first, open-source platform for knowledge sharing and management"
  homepage "https://github.com/logseq/logseq"

  livecheck do
     url :url
     strategy :github_latest
  end

  auto_updates true

  app "Logseq.app"
end
