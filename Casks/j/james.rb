cask "james" do
  version "2.1.2"
  sha256 "6f958fcd988eccbfa9aacb393b7b5f484a3c824f2f137f948dfc5a82d8a9c962"

  url "https://github.com/james-proxy/james/releases/download/v#{version}/james-#{version}.dmg"
  name "James"
  desc "Web Debugging Proxy Application"
  homepage "https://github.com/james-proxy/james"

  deprecate! date: "2024-09-08", because: :unmaintained

  app "James.app"

  caveats do
    requires_rosetta
  end
end
