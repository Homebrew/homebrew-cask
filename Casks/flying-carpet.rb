cask "flying-carpet" do
  version "3.0"
  sha256 "a38cb60ee732412d03c0372f1b1b3cc46cb83e94f33961c6f677afb4f71d4aaf"

  url "https://github.com/spieglt/FlyingCarpet/releases/download/#{version}/Flying.Carpet.Mac.zip"
  appcast "https://github.com/spieglt/flyingcarpet/releases.atom"
  name "Flying Carpet"
  desc "Cross-platform file transfer over ad-hoc wifi"
  homepage "https://github.com/spieglt/flyingcarpet"

  app "Flying Carpet.app"
end
